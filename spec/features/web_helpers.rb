def sign_up_play
  visit ('/')
  fill_in :player_1_name, with: 'Ronaldo'
  click_button 'Go'
end
