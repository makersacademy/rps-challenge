class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    fail 'not a possible weapon' unless [:rock, :paper, :scissors].include?(weapon)
    @weapon = weapon
  end

end
