def create_player
  visit('/')
  fill_in :player_1_name, with: 'Mark'
  click_button 'Create player!'
end
