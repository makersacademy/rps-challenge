require_relative 'player'
class Computer
  attr_reader :score

  def initialize(score = 0)
    @score = score
  end
end
