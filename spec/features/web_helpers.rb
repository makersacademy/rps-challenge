RSPEC_TEST_PLAYER_0_NAME = "Siegfried"

def sign_in_and_play
  visit "/"
  fill_in :player_0_name, with: RSPEC_TEST_PLAYER_0_NAME
  click_button 'Play'
end 
