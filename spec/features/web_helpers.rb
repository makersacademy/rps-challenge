def signup_and_play
  visit("/")
  choose("multi")
  click_button "Submit"
  fill_in 'player1', with: "Ant"
  fill_in 'player2', with: "Elephant"
  click_button 'Start Game'
end
