def enter_name
  visit('/')
  fill_in 'player_name', with: 'Doby'
  click_button('Play')
end