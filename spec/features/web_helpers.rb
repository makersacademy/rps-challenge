def sign_in
  visit ('/')
  fill_in(:player_1, with: 'Michelle')
  click_button('Go!')
end
