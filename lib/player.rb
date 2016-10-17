class Player
  attr_reader :name, :attack

  def initialize(name)
    @name = name
  end

  def select_attack(attack)
    @attack = attack
  end
end
