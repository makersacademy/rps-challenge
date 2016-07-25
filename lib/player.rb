class Player
  attr_reader :name

  def self.create(name)
    @player = Player.new(name)
  end

  def initialize(name)
    @name = name
  end

  def self.instance
    @player
  end

end
