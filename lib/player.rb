class Player
  attr_reader :name, :choice, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def choose(choice)
    @choice = choice.to_sym
  end

  def receive_point
    @score += 1
  end
end