def register
  visit('/')
  fill_in('player_name', with: 'Pikachu')
  click_button('Submit')
end 
