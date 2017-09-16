class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def attack
    "Rock"
  end
end
