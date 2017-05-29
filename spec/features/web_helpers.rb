def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'name'
  click_button 'Start Game'
end 
