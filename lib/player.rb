class Player

  attr_reader :name, :choice

  def self.instance
    @player
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def initialize(name)
    @name = name
  end

  def store_choice(choice)
    @choice = choice
  end 
end
