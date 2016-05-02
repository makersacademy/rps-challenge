class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.create(player)
    @player= Player.new(player)
  end

  def self.player
    @player
  end
end