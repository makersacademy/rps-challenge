class Game
  RULES = {
    "rock-rock" => 0,
    "rock-paper" => 2,
    "rock-scissor" => 1,
    "paper-paper" => 0,
    "paper-rock" => 1,
    "paper-scissor" => 2,
    "scissor-scissor" => 0,
    "scissor-rock" => 2,
    "scissor-paper" => 1
    }
  attr_reader :player, :move

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def make_move
    @move = moves.sample
  end

  def winner(move1, move2)
    RULES[move1.downcase + "-" + move2.downcase]
  end

  private
  def moves
    ["rock", "paper", "scissor"]
  end
end
