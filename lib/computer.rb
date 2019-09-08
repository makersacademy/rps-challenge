class Computer
  attr_reader :attack, :possible_attacks, :name

  def initialize
    @name = "Computer"
    @attack = nil
    @possible_attacks = [:Rock, :Paper, :Scissors]
  end

  def attack_with(*)
    @attack = @possible_attacks.sample
  end

end