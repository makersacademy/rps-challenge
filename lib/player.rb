class Player

  attr_reader :name, :wins

  def initialize(name)
    @name = name
    @wins = 0
  end

  def win
    @wins += 1
  end

end
