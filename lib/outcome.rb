# frozen_string_literal: true

WINMAP = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['scissors', 'rock']
}

def outcome(player_1_move, player_2_move)
  if player_1_move == player_2_move
    "Draw!"
  elsif WINMAP.fetch(player_1_move).include? player_2_move
    "Player One Wins!"
  else
    "Player Two Wins!"
  end
end
