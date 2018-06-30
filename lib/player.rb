class Player

  attr_reader :name, :move, :score

  def initialize(name, score = 0)
    @name = name
    @name = "Human" if @name == ""
    @score = score
  end

  def choose(move)
    @move = move.downcase.to_sym
  end

  def tally_score
    @score += 1
  end

end
