class Game 
  OUTCOMES = ["ROCK", "PAPER", "SCISSORS"]
  attr_reader :player_move

  def initialize(player_move)
    @player_move = player_move.upcase
  end

  def play
    @game_move = move
    if @player_move == @game_move
      @result = "Draw"
    elsif @player_move == "ROCK" && @game_move == "SCISSORS" ||
      @player_move == "SCISSORS" && @game_move == "PAPER" ||
      @player_move == "PAPER" && @game_move == "ROCK"
      @result = "Win"
    else 
      @result = "Loss"
    end
  end

  private
  def move
    OUTCOMES.sample
  end
  
end
