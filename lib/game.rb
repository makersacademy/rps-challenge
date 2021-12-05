require_relative 'player'

class Game
  attr_reader :player1, :player2, :choosen_move
  
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end

  def player_move
    @choosen_move
  end

  def pick_random(move_list = ["ROCK", "PAPER", "SCISSORS"])
    move_list.sample
  end
end
