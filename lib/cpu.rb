class Cpu

  attr_reader :move

  def roll_attack
    @move = [:rock, :paper, :scissors].sample
  end

end
