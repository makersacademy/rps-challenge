class Player
  
  MOVES = ['rock', 'paper', 'scissors']

  attr_reader :name, :attack_type
  
  def initialize(name)
    @name = name
  end

  def attack_type(rps)
    @attack_type = rps
  end

  def random_attack
    @attack_type = MOVES[Kernel.rand(0..(MOVES.size - 1))]
  end

end
