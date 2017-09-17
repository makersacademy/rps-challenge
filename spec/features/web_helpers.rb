def register_and_play
  visit('/')
  fill_in :player_1_name, with: 'Allanon'
  click_button('Submit')
end
