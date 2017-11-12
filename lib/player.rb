class Player
  attr_accessor :score, :choice
  attr_reader :name

  def initialize(name)
    @name = name
    @score = 0
  end
end
