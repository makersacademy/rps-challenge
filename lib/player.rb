class Player
  attr_reader :name, :score, :action

  def initialize(name)
    @name = name
    @score = 0
  end

  def throw(throw)
    @action = throw
  end

  def thrown_action?
    !!action
  end

  def reset_action
    @action = nil
  end

  def increase_score
    @score += 1
  end

  def computer?
    self.class == Computer
  end
end

class Computer < Player
  def initialize(name = "Computer")
    @name = name
  end

  def random_throw
    @action = [:rock, :paper, :scissors].sample
  end
end