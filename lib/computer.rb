require_relative 'player'
class Computer < Player

  def initialize(name = "Computer")
    super(name)
  end

  attr_reader :name

  def choose
    ["rock","paper","scissors"].sample
  end

end
