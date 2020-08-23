def player_1_sign_in_and_play
  visit '/'
  fill_in :player1, with: 'Yasmin'
  click_button 'Submit'
end
