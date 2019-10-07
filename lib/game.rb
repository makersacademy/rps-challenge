require_relative './player.rb'
require_relative './ai.rb'
require_relative './winner.rb'

class Game

  attr_reader :player, :player2, :winner

  def initialize(player_class = Player, player2 = Ai)
    @player_class = player_class
    @player2 = player2.new
  end

  def create_player(name)
    @player = @player_class.new(name)
  end

  def winner_is(decider = Winner.new)
    @winner = decider.who_wins(@player, @player2)
  end

end
