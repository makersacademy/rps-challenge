def sign_in_and_play
  visit('/')
  fill_in 'name1', with: 'Tony'
  fill_in 'name2', with: 'Phil'
  click_button 'start'
end
