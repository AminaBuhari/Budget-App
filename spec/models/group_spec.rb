require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.new(name: 'Amina', email: 'amina@gmail.com')
    @group = Group.new(name: 'aliya', user_id: @user.id)
    @group.transactions.new(name: 'fatima', amount: 10, user_id: @user.id, group_id: @group.id)
  end

  describe 'group validation tests' do
    it 'validate the presence of the name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'validate the presence of the user_id' do
      @group.user_id = nil
      expect(@group).to_not be_valid
    end
  end
end
