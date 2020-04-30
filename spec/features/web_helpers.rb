TEST_PLAYER_1_NAME = "Siegfried"

def sign_in_and_play
  visit "/"
  fill_in :player_1_name, with: TEST_PLAYER_1_NAME
  click_button 'Play'
end 
