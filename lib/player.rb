class Player
  attr_reader :name 
  attr_accessor :move

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  def initialize(name)
    @name = name
    @move
  end
end