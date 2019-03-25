module UserManagementToHTML
  require_relative 'html_builder'
  include HTMLBuilder

  def self.users_to_html_list(users_obj, html_builder = HTMLBuilder)
    user_names_array = users_obj.users.map { |user| user.name }
    html_builder.array_to_list(user_names_array)
  end
end
