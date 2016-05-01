class Player

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def take_turn(attack)
    @attack = attack.to_sym
  end

  def attack
    @attack
  end

end
