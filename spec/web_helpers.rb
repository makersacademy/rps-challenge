def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: 'Jon'
  fill_in :player_2_name, with: 'Whisky'
  click_button 'Submit'
end
