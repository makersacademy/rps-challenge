def sign_in_and_play
  visit('/')
  click_link '1'
  fill_in :player_1_name, with: 'Bob'
  click_button 'Submit'
end
