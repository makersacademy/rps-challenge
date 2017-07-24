class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def update_score
    increment
  end

  private

  def increment
    @score += 1
  end

end
