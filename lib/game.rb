class Game 
  OUTCOMES = ["ROCK", "PAPER", "SCISSORS"]
  attr_reader :player_move

  def initialize(player_move)
    @player_move = player_move.upcase
  end

  def move
    OUTCOMES.sample
  end

  def play
    @game_move = move
    if @player_move == @game_move
      puts "Draw!"
    elsif @player_move == "ROCK" && @game_move == "SCISSORS" ||
      @player_move == "SCISSORS" && @game_move == "PAPER" ||
      @player_move == "PAPER" && @game_move == "ROCK"
      puts "You win!"
    else 
      puts "You lose!"
    end
  end
end
