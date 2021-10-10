def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Tony'
  click_button 'start'
end
