def sign_in_and_play
  visit '/'
  fill_in :player1, with: "Elizabeth"
  click_button "Play Rock, Paper, Scissors!"
end
