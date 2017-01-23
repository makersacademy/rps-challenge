class Player
  attr_reader :wins, :name

  HANDICAP = 0

  def initialize(name, wins = HANDICAP)
    @name = name
    @wins = wins
  end

  def win
    @wins += 1
  end
end
