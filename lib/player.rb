class Player
  attr_reader :name, :attack, :possible_attacks

  def initialize(name)
    @name = name
    @attack = nil
    @possible_attacks = [:rock, :paper, :scissors]
  end

  def attack_with(attack)
    raise 'unavailable attack' unless @possible_attacks.include?(attack)
    @attack = attack
  end

end