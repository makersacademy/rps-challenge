def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Francesca'
  click_button 'Submit'
end
