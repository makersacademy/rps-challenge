def signin_and_play
  visit('/')
  fill_in :player_1, with: 'Adrien'
  click_button 'Play'
end
