def sign_in_and_play
  visit('/')
  fill_in :player1, with: "player1"
  select "Scissors", from: "option1"
  fill_in :player2, with: "player2"
  select "Rock", from: "option2"
  click_button 'Play'
end

def sign_in_and_play_player1
  visit('/')
  fill_in :player1, with: "player1"
  select "Scissors", from: "option1"
  select "Rock", from: "option2"
  click_button 'Play'
end

def sign_in_and_play_player2
  visit('/')
  select "Scissors", from: "option1"
  fill_in :player2, with: "player2"
  select "Rock", from: "option2"
  click_button "Play"
end


def sign_in_and_play_tie
  visit('/')
  fill_in :player1, with: "player1"
  select "Rock", from: "option1"
  fill_in :player2, with: "player2"
  select "Rock", from: "option2"
  click_button "Play"
end
