require_relative 'player'

class Game
  attr_reader :player1, :player2, :p1_move, :c_move, :victories

  RPS_LIST = ["ROCK", "PAPER", "SCISSORS"]
  
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end 

  def pick_random(move_list = RPS_LIST)
    @c_move = move_list.sample
  end

  def get_player_move
    @p1_move = @player1.p_move
  end

  def fight_outcome
    get_player_move
    pick_random
    if @c_move == @p1_move
      @outcome = 1
    elsif (@p1_move == "ROCK" && @c_move == "SCISSORS") || (@p1_move == "PAPER" && @c_move == "ROCK") || (@p1_move == "SCISSORS" && @c_move == "PAPER")
      @player1.victory
      @outcome = 2
    else
      @player2.victory
      @outcome = 3
    end
  end
end
