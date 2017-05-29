class Player

  attr_reader :name
  attr_accessor :choice, :score

  def initialize(name, score = 0, choice = nil)
    @name = name
    @score = score
    @choice = choice
  end

end
