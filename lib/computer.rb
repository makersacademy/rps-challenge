require_relative 'choice'

class Computer

  attr_reader :name, :current_choice

  def initialize(name = 'AI', choice = Choice.new )
    @name = name
    @choice = choice
    @current_choice = nil
  end

  def choose(n = random_number)
    @current_choice = @choice.options[n]
  end

  private

  def random_number
    Kernel.rand(1..3)
  end

end
