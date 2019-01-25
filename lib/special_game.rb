class SpecialGame do

end

def round_winner?
  beats = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper' }
  return "Draw!" if player1.move == player2.move
  return player1 if beats[player1.move] == player2.move
  player2
end
