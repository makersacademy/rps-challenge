def sign_in_and_play
  visit('/')
  fill_in :player1, with: "Meryl"
  click_button "Submit"
end

def play_game
  visit('/')
  fill_in :player1, with: "Meryl"
  click_button "Submit"
  click_button "Play Game"
end
