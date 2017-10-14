def sign_up_players
  visit '/'
  fill_in :player_1, with: 'Leonard'
  fill_in :player_2, with: 'Sheldon'
  click_button 'Submit'
end