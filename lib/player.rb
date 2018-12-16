class Player

attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = 0
  end

  def attack(attack)
    @move = attack.downcase.to_sym
  end

end
