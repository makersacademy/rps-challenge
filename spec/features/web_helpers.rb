def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Paulo'
  click_button 'Lets play'
end
