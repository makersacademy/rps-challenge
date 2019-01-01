ROCK = { "Rock" => "Drew", "Paper" => "Lost", "Scissors" => "Won" , "Lizard" => "Won", "Spock" => "Lost"}
PAPER = { "Rock" => "Won", "Paper" => "Drew", "Scissors" => "Lost", "Lizard" => "Lost", "Spock" => "Won"}
SCISSORS = { "Rock" => "Lost", "Paper" => "Won", "Scissors" => "Drew", "Lizard" => "Won", "Spock" => "Lost"}
LIZARD = { "Rock" => "Lost", "Paper" => "Won", "Scissors" => "Lost", "Lizard" => "Drew", "Spock" => "Won"}
SPOCK = { "Rock" => "Won", "Paper" => "Lost", "Scissors" => "Won", "Lizard" => "Lost", "Spock" => "Drew"}
MOVES = ["Rock", "Paper", "Scissors", "Lizard" , "Spock"]

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
    elsif move1 == "Scissors"
      SCISSORS[move2]
    elsif move1 == "Lizard"
      LIZARD[move2]
    else
      SPOCK[move2]
    end
  end

  # def message(move, name1, name2)
  #   if move == "Drew"
  #     "You both drew!!"
  #   elsif move == "Win"
  #     "#{name1} beat #{name2}"
  #   else
  #     "#{name2} beat #{name1}"
  #   end
  # end

end
