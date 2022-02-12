
def select_computer_player
  visit '/'
  click_button("computer")
end

def visit_and_sign_on
  select_computer_player
  fill_in :player_name, with: "Bob"
  click_button 'Register'
end
