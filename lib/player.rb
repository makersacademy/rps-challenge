class Player
  attr_accessor :name, :shape

  def initialize(name = nil, shape = nil)
    @name = name
    @shape = shape
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

end
