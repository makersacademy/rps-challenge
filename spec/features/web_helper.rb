def sign_in
  visit('/')
  fill_in(:player_1, with: 'Batman')
  click_button('Submit')
end
