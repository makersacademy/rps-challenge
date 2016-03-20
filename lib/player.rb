class Player

  def initialize(name)
    @name = name
    @last_move = nil
  end

  def name
    @name.dup.capitalize
  end

  def store_attack(attack)
    @last_move = attack
  end

  def last_move?
    @last_move.dup
  end

end
