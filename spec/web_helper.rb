def sign_in_and_play
  visit '/'
  fill_in 'Player1', with: 'He-Man'
  click_button 'Submit'
end
