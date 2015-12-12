def sign_in_and_play_computer
  visit('/')
  fill_in :player_1_name, with: 'Emma'
  click_button 'Submit'
end
