class Player

attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = ""
  end

  def attack(attack)
    @move = attack
  end

end
