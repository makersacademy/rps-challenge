def sign_in_and_play
  visit('/')
  click_button '1 player'
  fill_in :player_1_name, with: 'Arnold'
  click_button 'Start'
end
