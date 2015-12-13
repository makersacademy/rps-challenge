class Player

  attr_reader :name, :decision

  def initialize(name)
    @name = name
  end

  def decides(decision)
    @decision = decision
  end

  def random_decides
    possibilities = ['rock','paper','scissors']
    possibilities[Kernel.rand(3)]
  end

  def beat?(opponent)
    return nil if @decision == opponent.decision
    return true if @decision == 'rock' && opponent.decision == 'scissors'
    return true if @decision == 'paper' && opponent.decision == 'rock'
    return true if @decision == 'scissors' && opponent.decision == 'paper'
    false
  end

end
