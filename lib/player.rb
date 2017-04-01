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

  def player_choice(choice)
    @choice = choice
  end
end
