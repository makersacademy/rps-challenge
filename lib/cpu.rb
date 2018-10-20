require "human.rb"

class Cpu < Human
attr_reader :name

  def initialize
    @name = "CPU"
  end

  def choice
    Game::OPTIONS.sample
  end

end
