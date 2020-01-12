require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
  end

  def make_move(move)
    @players.first.make_move(move)
  end

  def switch_turns
    @players.rotate!
  end

  def check_win(move_1, move_2)
    
  end

  def draw?
    @player_1.move == @player_2.move
  end

end
