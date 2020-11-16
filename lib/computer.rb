require_relative 'game'

class Computer
  attr_reader :name

  def initialize(name = "The Computer")
    @name = name
  end

  def choose
    Game::OPTIONS.sample
  end
end
