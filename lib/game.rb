require_relative 'player'

class Game

  attr_reader :player_1

  def initialize(player_1)
    @player_1 = player_1
  end

  @@winning_pairs = [["Rock", "Scissors"],
  ["Scissors", "Paper"],
  ["Paper", "Rock"]]

  def win?(player_1_move, opponent_move)
    @@winning_pairs.include?([player_1_move, opponent_move])
  end


end
