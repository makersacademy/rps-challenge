class Game 
  OUTCOMES = ["ROCK", "PAPER", "SCISSORS"]
  attr_reader :player_move

  def initialize(player_move)
    @player_move = player_move
  end

  def move
    OUTCOMES.sample
  end

  def play
    @game_move = move
    
    puts "You win!"
  end
end
