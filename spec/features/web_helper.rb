def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Mary'
  fill_in :player_2, with: 'Alf'
  click_button 'Submit'
end
