require_relative 'player'

class Game

  attr_reader :player, :choices

  def initialize(computer, player = Player.new)
    @player = player
    @choices = []
  end

  def add_selection(choice)
    @choices << choice
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
