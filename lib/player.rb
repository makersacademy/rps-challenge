class Player

  attr_reader :name, :gesture, :score

  def initialize name
    @name = name
    @gesture = nil
    @score = 0
  end

  def choose gesture
    @gesture = gesture.to_sym
  end

  def add_point
    @score += 1
  end

end
