class Player
  DEFAULT_SCORE = 0
  attr_reader :name
  attr_accessor :choice, :score

  def initialize(name)
    @name = name.capitalize
    @score = DEFAULT_SCORE
  end

end
