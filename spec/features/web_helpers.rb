def sign_in_and_play
  visit('/')
  fill_in :name1, with: 'Jayda'
  click_button 'Submit'
end
