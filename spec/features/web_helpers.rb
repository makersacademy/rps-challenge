def sign_in_1_player
  visit('/')
  fill_in 'name', with: 'Tony'
  click_button 'start'
end
