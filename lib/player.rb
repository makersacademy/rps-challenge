class Player
  attr_reader :name, :weapon

  def initialize(name = 'Rick')
    @name = name
  end

  def choice(weapon = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample)
    @weapon = weapon
  end
end
