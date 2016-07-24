
class Player
  attr_reader :name, :attack
  def initialize(name)
    @name = name
    @attack = nil
  end

  def choose(attack)
    @attack = attack
  end


end
