class Computer
  ATTACKS = [:rock, :paper, :scissors]

  def attack
    ATTACKS.sample
  end
end