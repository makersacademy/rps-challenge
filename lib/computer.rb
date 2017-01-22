require_relative 'rockpaperscissors'

class Computer
  attr_reader :wins

  HANDICAP = 0

  def initialize(wins = HANDICAP, rockpaperscissors = RockPaperScissors.new)
    @rockpaperscissors = rockpaperscissors
    @wins = wins
  end

  def rock_paper_scissors
    @rockpaperscissors.rock_paper_scissors
  end
end
