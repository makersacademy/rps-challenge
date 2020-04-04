require 'game'

def sign_in_and_press_submit
  visit('/')
  fill_in :player_1_name, with: 'Adam'
  click_button 'Submit'
end
