def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Tim'
  click_button 'Submit'
end
