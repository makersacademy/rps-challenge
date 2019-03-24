def sign_in_and_play
  visit('/')
  fill_in(:name, with: 'Jon Snow')
  click_button 'Register'
end
