class Player
  
  MOVES = ['rock', 'paper', 'scissors']

  attr_reader :name, :choice
  
  def initialize(name)
    @name = name
    @choice = nil
  end

  def attack_type(rps)
    @choice = rps
  end

  def random_attack
    @choice = MOVES[Kernel.rand(0..(MOVES.size - 1))]
  end

end
