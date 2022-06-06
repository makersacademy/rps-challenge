def sign_in_and_play
  visit('/')
  fill_in :names, with: 'Aisha'
  click_button 'Submit'
end
