class Game 

  attr_reader :player, :computer
  
  def initialize(player, computer)
    @player = player
    @computer = computer
  end
  

  RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }
  
  def win?
    RULES[@player.choice.shape][@computer.choice.shape] == :win
  end
  def draw?
    RULES[@player.choice.shape][@computer.choice.shape] == :draw
  end
  def lose?
    RULES[@player.choice.shape][@computer.choice.shape] == :lose
  end



end