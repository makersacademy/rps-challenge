def sign_into_game
  visit('/')
  fill_in('player1_name', with:'Vu')
  click_button('Submit')
end