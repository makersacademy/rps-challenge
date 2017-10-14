class Human
  attr_reader :name, :wins, :tries
  def initialize name
    @name = name
    @wins = 0
    @tries = 0
  end

  def update_score win
    @tries += 1
    @wins += 1 if win
  end
end
