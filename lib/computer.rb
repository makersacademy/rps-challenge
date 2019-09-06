class Computer
  attr_reader :name, :attack, :possible_attacks

  def initialize
    @attack = nil
    @possible_attacks = [:rock, :paper, :scissors]
  end

  def attack_with
    @attack = @possible_attacks.sample
  end

end