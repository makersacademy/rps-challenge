def sign_in
  visit ('/')
  fill_in(:player_name, with: 'Michelle')
  click_button('Go!')
end
