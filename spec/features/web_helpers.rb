def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Dione'
  click_button 'Submit'
end
