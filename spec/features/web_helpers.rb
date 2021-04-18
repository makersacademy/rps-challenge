def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'User01'
  click_button 'enter name and start game!'
end
