def register_and_play
  visit '/'
  click_button 'Register to play'
  fill_in 'player_name', with: 'Jeremy'
  click_button 'Play'
end
