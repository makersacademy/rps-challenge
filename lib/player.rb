require 'game'
class Player
attr_reader :name
  def initialize(name, game = Game.new)
    @name = name
    @game = game
  end

  def move(move)
    @game.move(move)
  end


end
