class Player

attr_reader :name

  def self.create(name)
    @player = Player.new(name)
  end

  def self.current
    @player
  end

  def initialize(name)
    @name = name
  end

end
