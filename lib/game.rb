class Game
  POSSIBLE_MOVES = ["rock", "paper", "scissors"]
  
  attr_reader :player_move

  def initialize(name)
    @name = name
    @player_move = "rock"
  end

  def player_name
    @name
  end

  def move(choice)
    @player_move = choice
  end

  def computer_move
    POSSIBLE_MOVES[rand(POSSIBLE_MOVES.count)]
  end
end
