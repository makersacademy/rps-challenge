class Player
  attr_reader :name
  attr_accessor :score
  DEFAULT_SCORE = 0

  def initialize(name)
    @name = name
    @score = DEFAULT_SCORE
  end

  # def score
  #   @score
  # end

end
