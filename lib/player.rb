class Player
  attr_reader :name

  def initialize(name="Player 1")
    @name = name
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

end
