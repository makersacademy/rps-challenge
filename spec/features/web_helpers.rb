def register_and_play
  visit('/')
  fill_in :player_name, with: 'player_name'
  click_button('Submit')
end
