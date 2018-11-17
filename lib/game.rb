require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :multi

  def initialize(player_1, player_2, multi = false)
    @player_1 = player_1
    @player_2 = player_2
    @multi = multi
  end

  @@winning_pairs = [["Rock", "Scissors"],
  ["Scissors", "Paper"],
  ["Paper", "Rock"]]

  def win?(player_1_move, opponent_move)
    @@winning_pairs.include?([player_1_move, opponent_move])
  end

  def draw?(player_1_move, opponent_move)
    player_1_move == opponent_move
  end

  def self.create(player_1, player_2, multi = false)
    @game = Game.new(player_1, player_2, multi)
  end

  def self.instance
    @game
  end

end
