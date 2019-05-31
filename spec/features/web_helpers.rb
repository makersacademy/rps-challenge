def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Lauren'
  click_button 'Go!'
end