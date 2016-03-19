require 'constants'

class Ai

  include Constants

  NAME = 'Computer'

  attr_reader :name

  def initialize
    @name = NAME
  end

  def move
    Constants::MOVES[rand(2)]
  end
end
