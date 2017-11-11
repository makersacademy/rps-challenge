class Computer
  DEFAULT_SCORE = 0
  attr_reader :name, :score

  def initialize(name = 'computer')
    @name = name.capitalize
    @score = DEFAULT_SCORE
  end

end
