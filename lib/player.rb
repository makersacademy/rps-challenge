class Player

  attr_reader :name, :attack

  def initialize(name)
    @name = name
  end

  def take_turn(attack)
    @attack = attack.to_sym
  end

end
