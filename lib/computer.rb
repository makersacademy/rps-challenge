class Computer

  DEFAULT_NAME = "Computer"

  attr_reader :name, :score
  attr_accessor :choice

  def initialize(name = DEFAULT_NAME)
    @name = name
    @score = 0
    @choice = nil
  end
end