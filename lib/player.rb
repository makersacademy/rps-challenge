class Player
  attr_reader :name, :moved
  def initialize(name)
    @name = name
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  def move(choice)
    @moved = choice
  end
end
