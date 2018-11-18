ROCK = { "Rock" => "Drew", "Paper" => "Lose", "Scissors" => "Win" }
PAPER = { "Rock" => "Win", "Paper" => "Drew", "Scissors" => "Lose" }
SCISSORS = { "Rock" => "Lose", "Paper" => "Win", "Scissors" => "Drew" }
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

  def winner(player_move, cpu_move)
    if player_move == "Rock"
      ROCK[cpu_move]
    elsif player_move == "Paper"
      PAPER[cpu_move]
    else
      SCISSORS[cpu_move]
    end
  end
end
