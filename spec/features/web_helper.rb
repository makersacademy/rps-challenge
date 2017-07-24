def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'bob'
  fill_in :player_1_name, with: 'bab'
  click_button 'Submit'
end
