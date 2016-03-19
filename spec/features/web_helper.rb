def sign_in_and_play
  visit '/'
  fill_in 'player_one' , with: "player1"
  click_button 'Play'
end
