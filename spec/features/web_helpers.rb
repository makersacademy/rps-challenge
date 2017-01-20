def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Player'
  click_button 'Submit'
end
