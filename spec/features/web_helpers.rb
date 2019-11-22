def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Bella'
  fill_in :player_2_name, with: 'Marjan'
  click_button 'Submit'
end
