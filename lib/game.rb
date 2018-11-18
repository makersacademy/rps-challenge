require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :multi, :rpssl

  def initialize(player_1, player_2, multi = false, rpssl = false)
    @player_1 = player_1
    @player_2 = player_2
    @multi = multi
    @rpssl = rpssl
  end

  @@winning_pairs = [["Rock", "Scissors"], ["Rock", "Lizard"],
  ["Scissors", "Paper"], ["Scissors", "Lizard"],
  ["Paper", "Rock"], ["Paper", "Spock"],
  ["Spock", "Scissors"], ["Spock", "Rock"],
  ["Lizard", "Spock"], ["Lizard", "Paper"]]

  def win?(player_1_move, opponent_move)
    @@winning_pairs.include?([player_1_move, opponent_move])
  end

  def draw?(player_1_move, opponent_move)
    player_1_move == opponent_move
  end

  def self.create(player_1, player_2, multi = false, rpssl = false)
    @game = Game.new(player_1, player_2, multi, rpssl)
  end

  def self.instance
    @game
  end

end
