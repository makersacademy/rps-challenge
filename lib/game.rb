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

end
