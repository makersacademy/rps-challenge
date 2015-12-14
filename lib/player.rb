class Player

  attr_reader :choice, :name, :score, :computer

  def initialize(name)
    @name = name
    @choice = nil
    @score = 0
    @computer = false
  end

  def rock
    @choice = :rock
  end

  def paper
    @choice = :paper
  end

  def scissors
    @choice = :scissors
  end

  def add_score
    @score += 1
  end

end
