# def sign_in_and_play
#   visit('/')
#   click_button "Play a friend"
#   fill_in :player_1, with: 'Player1'
#   fill_in :player_2, with: 'Player2'
#   click_button 'Submit'
# end

def sign_in_and_play_sheldon
  visit('/')
  click_button "Play Sheldon"
  fill_in :name_1, with: 'Player1'
  click_button 'Submit'
end
