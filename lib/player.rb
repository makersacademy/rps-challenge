class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice.capitalize
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

end
