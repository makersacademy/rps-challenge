
def visit_and_sign_on
  visit '/'
  fill_in :player_name, with: "Bob"
  click_button 'Register'
end
