def register
  visit '/'
  fill_in(:player_name, with: 'Charlie')
  click_button('Register!')

end
