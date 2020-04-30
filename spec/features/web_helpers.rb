TEST_PLAYER_1_NAME = "Siegfried"

def play
  visit "/"
  fill_in :player_1_name, with: TEST_PLAYER_1_NAME
  click_button 'Play'
end 
