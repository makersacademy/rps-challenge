class RPS

  def initialize
    @game_options = {
      1 => "Rock",
      2 => "Paper",
      3 => "Scissors"
    }
   
  end

  def play
    @game_options[rand(1..3)]
  end

# - Rock beats Scissors
# - Scissors beats Paper
# - Paper beats Rock
  def result
    

  end

end
