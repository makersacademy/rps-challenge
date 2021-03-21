def sign_in_and_play
  visit '/'
  fill_in 'Player', with: 'Cap'
  click_button 'Submit'
end 
