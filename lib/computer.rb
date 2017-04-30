require_relative 'choice'

class Computer

  attr_reader :name, :current_choice

  def initialize(name = 'AI', choice = Choice.new )
    @name = name
    @choice = choice
    @current_choice = nil
  end

  def choose(n = rand(1..3))
    @current_choice = @choice.options[n]
  end

end
