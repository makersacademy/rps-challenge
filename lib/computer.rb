class Computer
  DEFAULT_SCORE = 0
  attr_reader :name, :score, :choice

  def initialize(name = 'computer')
    @name = name.capitalize
    @score = DEFAULT_SCORE
    @choices = ['Rock', 'Paper', 'Scissor']
  end

  def randomizer
    @choice = @choices[rand(3)]
  end

end
