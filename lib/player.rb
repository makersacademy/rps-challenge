class Player
  attr_reader :name, :score, :computer

  def initialize(name)
    @name = name
    @score = 0
    @computer = false
  end

  def throw(action)
    @action = action
  end

  def win
    @score += 1
  end
end
