class UserManagement

  attr_reader :users

  def self.create
    @user_mgmt = UserManagement.new
  end

  def self.instance
    @user_mgmt
  end

  def initialize
    @users = []
  end

  def sign_in(user)
    @users << user
  end

  def sign_out(user)
    @users.delete(user)
  end

  def print_user_list_html
    html_builder = "<ol>"
    @users.map do |user|
      html_builder += "<li>#{user.name}</li>"
    end
    html_builder += "</ol>"
  end
end
