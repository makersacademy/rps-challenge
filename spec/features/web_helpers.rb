def sign_in_and_play
  visit('/')
  fill_in(:player_name, with: 'Tunji')
  click_button 'start game'
end