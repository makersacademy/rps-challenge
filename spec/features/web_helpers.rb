
# this web_helper...
# enters a player's name, 
# clicks 'Start'
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Tim'
  click_button 'Start'
end
