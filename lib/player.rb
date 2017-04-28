class Player
  attr_reader :name, :wins, :loses

  def initialize(name)
    @name = name
    @wins = 0
    @loses = 0
  end

  def win
    @wins += 1
  end

  def loss
    @loses += 1
  end
end
