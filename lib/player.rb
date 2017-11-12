class Player
  DEFAULT_SCORE = 0
  attr_reader :name, :score
  attr_accessor :choice

  def initialize(name)
    @name = name.capitalize
    @score = DEFAULT_SCORE
  end

end
