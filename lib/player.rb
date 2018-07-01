class Player
  attr_reader :name
  attr_accessor :pick

  def self.create(name)
    @player = Player.new(name)
  end

  def self.name
    @player.name
  end

  def self.pick=(pick)
    @player.pick = pick
  end

  def self.pick
    @player.pick
  end

  private
  def initialize(name)
    @name = name
  end
end
