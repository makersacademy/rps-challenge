class Game

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player)
    @game ||= Game.new(player)
  end

  def self.instance
    @game
  end

end
