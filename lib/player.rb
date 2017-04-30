class Player

  attr_reader :name, :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

end
