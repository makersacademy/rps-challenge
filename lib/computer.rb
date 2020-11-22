require_relative 'game'

class Computer
  attr_reader :name, :options

  def initialize(name = "The Computer", options = Game::OPTIONS)
    @name = name
    @options = options
  end

  def choose
    options.sample
  end
end
