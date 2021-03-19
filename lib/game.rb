require_relative './player'

class Game
  attr_reader :player, :selection
  def initialize(player)
    @player = player
    @selection
  end

  def self.instance
    @game
  end

  def self.new_game(name)
    player = Player.new(name)
    @game = Game.new(player)
  end

  def update_selection(selection)
    @selection = selection
  end
end