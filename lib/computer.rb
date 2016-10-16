require_relative 'computerrandombehaviour'

class Computer

  attr_reader :name, :selection

  def initialize(name = "Computer")
    @name = name
  end

  def selection
    rps = ComputerRandomBehaviour.new.random_number
    @selection = Game.choices[rps]
  end

end
