class Computer
  attr_reader :ai

  def initialize
    @ai = %w(Rock Paper Scissors).sample
  end
end
