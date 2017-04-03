class Computer
  attr_reader :result

  SHAPES = %w[Rock Paper Scissors]

  def initialize
    @result = SHAPES.sample
  end

end
