class Game
  attr_reader :player, :cpu

  def self.create(player, cpu)
    @game = Game.new(player, cpu)
  end

  def self.access
    @game
  end

  def initialize(player, cpu)
    @player = player
    @cpu = cpu
  end
end
