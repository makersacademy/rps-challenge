RSPEC_TEST_PLAYER_0_NAME = "Siegfried"
RSPEC_TEST_PLAYER_1_NAME = "Roy"
RSPEC_TEST_COMPUTER_NAME = "Computer"

# def sign_in_and_play
#   visit "/"
#   fill_in :player_0_name, with: RSPEC_TEST_PLAYER_0_NAME
#   click_button 'Play'
# end 

def sign_in
  visit "/"
  fill_in :player_0_name, with: RSPEC_TEST_PLAYER_0_NAME
end

def sign_in_and_play_computer
  sign_in
  click_button 'Play Computer'
end

def sign_in_and_play_human
  sign_in
  click_button 'Play Human'
end
