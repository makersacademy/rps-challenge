def sign_in_james
  visit '/'
  fill_in(:player_1, with: 'James')
  click_button('Submit')
end
