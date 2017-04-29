def single_player_sign_in
  visit '/'
  fill_in :player1, with: 'Unai'
  click_button 'Submit'
end
