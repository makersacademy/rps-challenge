class Player

  attr_reader :name, :score

  def initialize(name = nil)
    @name = name
    @score = 0
  end

  def point(num = 1)
    @score += num
  end

end
