require './lib/computer'

class Game
  
  OPTIONS = [:Rock, :Paper, :Scissors]
  RULES = {
    Rock: :Scissors,
    Paper: :Rock,
    Scissors: :Paper
  }

end
