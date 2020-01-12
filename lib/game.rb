class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
    rock: { rock: :Tie, paper: :Loser, scissors: :Winner},
    paper: { rock: :Winner, paper: :Tie, scissors: :Loser},
    scissors: { rock: :Loser, paper: :Winner, scissors: :Tie}
  }

  attr_reader :player_1, :computer

  def initialize(player_1, computer)
    @player_1 = player_1
    @computer= computer
  end
  
  def outcome
    "Alicia"
  end
end
