def register_player
  visit('/')
  fill_in :player, with: 'Dash'
  click_button 'Submit'
end