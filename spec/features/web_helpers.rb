def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Tom'
  click_button 'Play!'
end
