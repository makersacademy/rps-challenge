class Player
  attr_reader :player

  def initialize(name)
    @name = name
    @move = ""
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end
end
