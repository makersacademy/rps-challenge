def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Nigel'
  click_button 'Go!'
end
