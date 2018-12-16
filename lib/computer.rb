class Computer

  ATTACKS = [:rock, :paper, :scissors]

  attr_reader :name, :move

  def initialize
    @name = :computer
    @move = ATTACKS.sample
  end
end
