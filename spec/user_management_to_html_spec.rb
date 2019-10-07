require 'user_management_to_html'

describe UserManagementToHTML do

  subject(:user_mgmt_to_html) { described_class.new(users) }
  let(:html_builder) { double :html_builder }
  let(:user1) {  double :user, name: 'Andy' }
  let(:user2) {  double :user, name: 'Sam' }
  let(:users) { double :users, users: [user1, user2] }

  describe '#users_to_html_list' do
    it 'should create list of users in html form from users object' do
      expect(html_builder).to receive(:array_to_list).with([user1.name, user2.name])
      user_mgmt_to_html.users_to_html_list(html_builder)
    end
  end
end
