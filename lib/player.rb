class Player

attr_reader :name, :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def win
    @score += 1
  end

end
