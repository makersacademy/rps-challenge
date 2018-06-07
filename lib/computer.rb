class Computer
  attr_reader :turn, :name

  def initialize(name = 'Computer')
    @name = name
  end

  def decide
    @turn = %w(Rock Paper Scissors).sample
  end
end
