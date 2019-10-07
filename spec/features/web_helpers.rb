def sign_into_the_game
  visit('/')
  fill_in :name_one, with: 'James'
  click_button 'Submit'
end
