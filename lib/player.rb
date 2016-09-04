class Player

  attr_reader :wins

  def initialize(name)
    @name = name
    @wins = 0
  end

  def name
    @name
  end

  def add_win
    @wins += 1
    self
  end
end
