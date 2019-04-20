def register_and_play
  visit('/')
  fill_in :player, with: 'player_name'
  click_button('Submit')
end
