class Computer
  attr_reader :ai, :name

  def initialize(name = 'Computer')
    @name = name
  end

  def turn
    @ai = %w(Rock Paper Scissors).sample
  end
end
