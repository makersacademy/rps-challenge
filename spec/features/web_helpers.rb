def signup_and_play
  visit("/")
  fill_in 'player1', with: "Ant"
  fill_in 'player2', with: "Elephant"
  click_button 'Start Game'
end
