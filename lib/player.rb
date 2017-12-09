class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name.capitalize
  end

  def choose(weapon)
    @choice = Choice.new(weapon)
  end

  def random_weapon
    randomiser = [:rock, :paper, :scissors, :spock, :lizard].sample
    choose(randomiser)
  end
end
