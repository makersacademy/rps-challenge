def sign_in
  visit('/')
  fill_in(:player_name, with: 'Reginald')
  click_button('Play')
end
