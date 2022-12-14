class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]
  before_action :set_group, only: %i[new create edit update destroy]

  # GET /transactions or /transactions.json
  def index
    set_group
    @transactions = Transaction.where(group_id: params[:group_id])
  end

  # GET /transactions/1 or /transactions/1.json
  def show; end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit; end

  # POST /transactions or /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    @transaction.group_id = @group.id

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to group_transactions_path(@group), notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1 or /transactions/1.json
  def update
    set_transaction
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to transaction_url(@transaction), notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1 or /transactions/1.json
  def destroy
    set_group
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to group_transactions_path, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  # Only allow a list of trusted parameters through.
  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id).merge(user_id: current_user.id)
  end
end
