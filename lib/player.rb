require_relative 'player'

class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.create(player)
    @player1 = Player.new(player)
  end

  def self.instance
    @player1
  end
end
