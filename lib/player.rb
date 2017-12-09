class Player

  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end

  def choose(weapon)
    @choice = Choice.new(weapon)
    raise "You can't use #{@choice.weapon} you oaf! Try again" if !@choice.available?
  end

  def random_weapon
    randomiser = [:rock, :paper, :scissors, :spock, :lizard].sample
    choose(randomiser)
  end

end
