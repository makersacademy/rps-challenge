def sign_in
  visit('/')
  fill_in :player_name, with: 'Dania'
  click_button 'Start Game'
end
