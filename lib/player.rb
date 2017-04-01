class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.set_instance(name)
    @player = Player.new(name)
  end

  def self.get
    @player
  end
end
