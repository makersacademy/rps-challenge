class UserManagementToHTML
  require_relative 'html_builder'
  include HTMLBuilder

  def initialize(user_management)
    @user_mgmt = user_management
  end

  def users_to_html_list(html_builder = HTMLBuilder)
    user_names_array = @user_mgmt.users.map { |user| user.name }
    html_builder.array_to_list(user_names_array)
  end
end
