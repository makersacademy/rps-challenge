class Player
  attr_reader :name
  attr_accessor :selection

  def self.create(name)
    @player = Player.new(name)
  end

  def self.access
    @player
  end

  def initialize(name)
    @name = name
  end
end
