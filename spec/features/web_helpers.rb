def sign_in_and_play
  visit('/')
  fill_in "name", with: 'Tam'
  click_button 'Submit'
end
