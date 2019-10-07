require 'user_management'

describe UserManagement do

  subject(:user_mgmt) { described_class.new }
  let(:user1) {  double :user }
  let(:user2) {  double :user }

  describe '#initialize' do
    it 'should set users attribute to empty array' do
      expect(user_mgmt.users).to eq []
    end
  end
  describe '#sign_in' do
    it 'should add a user to @users array when sign in called with that user as argument' do
      user_mgmt.sign_in(user1)
      expect(user_mgmt.users).to eq [user1]
    end
    it 'should add multiple users to @users array when sign in called multiple times' do
      user_mgmt.sign_in(user1)
      user_mgmt.sign_in(user2)
      expect(user_mgmt.users).to eq [user1, user2]
    end
  end
  it 'should remove users from @users array when sign out called with that user as argument' do
    user_mgmt.sign_in(user1)
    user_mgmt.sign_in(user2)
    user_mgmt.sign_out(user1)
    expect(user_mgmt.users).to eq [user2]
  end
end
