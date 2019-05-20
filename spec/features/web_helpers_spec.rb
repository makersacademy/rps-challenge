def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'James'
  click_button 'Submit'
end