class Player
  attr_reader :name, :attack

  def initialize(name)
    @name = name
  end

  def move(attack)
    @attack = attack
  end

end
