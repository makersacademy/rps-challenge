class Game
  POSSIBLE_MOVES = ["rock", "paper", "scissors"]
  attr_reader :player_move, :player_name

  def initialize(name)
    @player_name = name
    @player_move = "rock"
    @computer_move = "rock"
  end

  def choose(move)
    @player_move = move
  end

  def computer_move
    computer_decides
  end

  def print_winner
    if winner == ""
      "Tie!"
    else
      "#{winner} wins!"
    end
  end

  private

  def computer_decides
    @computer_move = POSSIBLE_MOVES[rand(POSSIBLE_MOVES.count)]
  end

  def winner
    if @player_move == "rock" && @computer_move == "paper"
      "Computer"
    elsif @player_move == "rock" && @computer_move == "scissors"
      @player_name
    elsif @player_move == "paper" && @computer_move == "rock"
      @player_name
    elsif @player_move == "paper" && @computer_move == "scissors"
      "Computer"
    elsif @player_move == "scissors" && @computer_move == "paper"
      @player_name
    elsif @player_move == "scissors" && @computer_move == "rock"
      "Computer"
    else # @player_move == @computer_move
      ""
    end
  end
end
