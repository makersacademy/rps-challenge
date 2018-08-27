class Game

  attr_reader :p1, :p2

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def attack(opponent, damage = 10)
    opponent.receive_damage(damage)
  end
end