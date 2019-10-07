class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  def weapon(choice)
    @choice = choice.to_sym
  end

end
