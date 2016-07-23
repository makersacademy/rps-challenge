require_relative 'player'

class Game

  attr_reader :selection

  def initialize(player_1)
    @player_1 = player_1
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_1
    @player_1
  end

  def player_1_selection(selection)
    @selection = selection
  end

end
