class Player
  attr_reader :name, :score, :action

  def initialize(name)
    @name = name
    @score = 0
  end

  def throw(throw)
    @action = throw
  end

  def increase_score
    @score += 1
  end

  def reset_action
    @action = nil
  end

  def computer?
    @name == "Computer"
  end
end
