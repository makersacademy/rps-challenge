def sign_in_helper
  visit('/')
  fill_in(:player_name, with: 'Reginald')
  click_button('Play')
end
