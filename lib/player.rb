class Player
  attr_reader :wins

  HANDICAP = 0

  def initialize(wins = HANDICAP)
    @wins = wins
  end
end
