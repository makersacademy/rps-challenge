class Player
  attr_reader :weapons

  def initialize
    @weapons = %w(rock, Spock, paper, lizard, scissor)
  end
end