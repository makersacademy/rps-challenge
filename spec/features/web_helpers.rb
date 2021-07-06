def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Calum'
  click_button 'Submit'
end
