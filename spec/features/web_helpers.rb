def enter_player
  visit '/'
  fill_in 'player_1_name', with: 'Celia'
  click_button 'Submit'
end
