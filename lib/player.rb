class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def add_score(amount=1)
    @score += amount
  end
end
