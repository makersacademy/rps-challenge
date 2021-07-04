class Game
  CHOICE = ["ROCK", "PAPER", "SCISSORS"]
  attr_reader :player_move 

  def initialize(player_move)
    @player_move = player_move.upcase
  end 

  def move
    CHOICE.sample
  end

  def play
    @game_move = move
    
    if @player_move == @game_move
      puts "You Drew"
    elsif @player_move == "ROCK" && @game_move == "SCISSORS" ||
      @player_move == "SCISSORS" && @game_move == "PAPER" ||
      @player_move == "PAPER" && @game_move == "ROCK"
      puts "You won"
    else 
      puts "You lost"
    end

  end

end 