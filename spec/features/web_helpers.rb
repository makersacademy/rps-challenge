def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Vikash'
  click_button 'Submit'
end
