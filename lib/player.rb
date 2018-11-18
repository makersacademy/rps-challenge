require './lib/game'

class Player
  attr_accessor :name, :name2, :move, :move2

  def initialize(name, name2 = "CPU")
    @name = name
    @name2 = name2
    @move = ""
    @move2 = ""
  end

  def self.create(*names)
    @player = Player.new(*names)
  end

  def self.instance
    @player
  end
end
