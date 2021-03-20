class Player

  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def wins
    @score += 1
  end
end

# add computer user stuff, if computer then this etc
