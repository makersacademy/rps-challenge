class Game

  VALID_MOVES = ["rock", "paper", "scissors"]

  attr_reader :player_name
  attr_accessor :player_move, :computer_move

  def initialize(name)
    @player_name = name
  end

  def update_computer_move
    @computer_move = generate_random_move
  end

# can refactor tests to make this method private
  def generate_random_move
    VALID_MOVES.sample
  end

  def return_winner_name
    if @computer_move == "rock" && @player_move == "scissors"
      return "computer"
    elsif @computer_move == "paper" && @player_move == "rock"
      return "computer"
    elsif @computer_move == "scissors" && @player_name == "paper"
      return "computer"
    elsif @computer_move == @player_move
      return "It's a draw! (boring)"
    else
      return @player_name
    end
  end

end
