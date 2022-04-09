def sign_in_and_play
  visit('/')
  fill_in 'pname', with: 'JAM' 
  click_button 'Submit'
end
