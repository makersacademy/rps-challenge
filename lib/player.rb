require_relative 'choice'

class Player

attr_reader :name, :current_choice

  def initialize(name, choice = Choice.new )
    @name = name
    @choice = choice
    @current_choice = nil
  end

  def choose(n)
    @current_choice = @choice.options[n]
  end

private

attr_reader :choice

end
