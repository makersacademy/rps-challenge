class Human
  attr_reader :name, :wins, :losses, :draws, :tries
  def initialize name
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
    @tries = 0
  end

  def update_score outcome
    @tries += 1
    @wins += 1 if outcome == 'win'
    @losses += 1 if outcome == 'lose'
    @draws += 1 if outcome == 'draw'
  end
end
