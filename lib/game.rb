require_relative 'player'

class Game
  attr_reader :player1, :player2, :p1_move, :p2_move, :victories

  RPS_LIST = ["ROCK", "PAPER", "SCISSORS"]
  
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end 

  def pick_random(move_list = RPS_LIST)
    @p2_move = move_list.sample
  end

  def get_player1_move
    @p1_move = @player1.p_move
  end

  def get_player2_move
    @p2_move = @player2.p_move
  end

  def fight_outcome
    get_player1_move
    player2.name == "Computer" ? pick_random : get_player2_move
    if @p2_move == @p1_move
      "It's a tie!"
    elsif (@p1_move == "ROCK" && @p2_move == "SCISSORS") || (@p1_move == "PAPER" && @p2_move == "ROCK") || (@p1_move == "SCISSORS" && @p2_move == "PAPER")
      @player1.victory
      "#{@player1.name} wins!"
    else
      @player2.victory
      "#{@player2.name} wins!"
    end
  end
end
