ROCK = { "Rock" => "Drew", "Paper" => "Lost", "Scissors" => "Won" }
PAPER = { "Rock" => "Won", "Paper" => "Drew", "Scissors" => "Lost" }
SCISSORS = { "Rock" => "Lost", "Paper" => "Won", "Scissors" => "Drew" }
MOVES = ["Rock", "Paper", "Scissors"]

class Game
  attr_reader :cpu_move

  def initialize(move = computer_move)
    @cpu_move = move
  end

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def computer_move
    MOVES.sample
  end

  def winner(move1, move2)
    if move1 == "Rock"
      ROCK[move2]
    elsif move1 == "Paper"
      PAPER[move2]
    else
      SCISSORS[move2]
    end
  end
end
