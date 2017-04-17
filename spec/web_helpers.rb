def sign_in_and_play
  visit ('/')
  fill_in 'player_1', with: 'Maggie'
  fill_in 'player_2', with: 'Krusty'
  click_button 'Submit'
end
