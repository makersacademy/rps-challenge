def player1_sign_in
  visit('/')
  fill_in(:player1_name, with: 'Mary')
  click_button('Start')
end
