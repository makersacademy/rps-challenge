def enter_name_and_play
  visit('/')
  fill_in('player_name', with: 'Kelvin')
  click_button('Play!')
end
