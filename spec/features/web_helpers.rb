def sign_in_and_battle
  visit('/')
  fill_in :player_name, with: 'Will'
  click_button('Prepare to battle!')
end
