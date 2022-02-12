
def select_computer_opponent
  visit '/'
  click_button("computer")
end

def select_human_opponent
  visit '/'
  click_button("human")
end

def computer_and_sign_on
  select_computer_opponent
  fill_in :player_one, with: "Bob"
  click_button 'Register'
end
