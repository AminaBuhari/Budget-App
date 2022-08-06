require 'rails_helper'

RSpec.describe Transaction, type: :model do
  before(:each) do
    @user = User.new(name: 'Amina', email: 'amina@gmail.com', id: 5)
    @group = Group.new(name: 'aliya', user_id: @user.id, id: 5)
   @transaction = @group.transactions.new(name: 'fatima', amount: 10, user_id: @user.id, group_id: @group.id)
  end

  describe 'validation tests' do
    it 'validates the user_id is present' do
      expect(@transaction.user_id).to eq(5)
    end

    it 'validates the group_id is present' do
      expect(@transaction.group_id).to eq(5)
    end

    it 'validates the record exists' do
      expect(@transaction.name).to eq('fatima')
    end
  end
end