class Game

  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    GAME_RULES[@player.to_sym.downcase][@computer.to_sym.downcase]
  end
  
end
