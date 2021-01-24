# frozen_string_literal: true

@winmap = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['scissors', 'rock']
}

def compare(player_1_move, player_2_move)
  if player_1_move == player_2_move
    "Draw!"
  elsif @winmap.fetch(player_1_move).include? player_2_move
    "Win!"
  else
    "Loss!"
  end
end
