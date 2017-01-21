class Game

  attr_reader :player, :computer, :outcomes, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
    @outcomes = {rock: {rock: :draw, paper: :lose, scissors: :win},
                paper: {rock: :win, paper: :draw, scissors: :lose},
                scissors: {rock: :lose, paper: :win, scissors: :draw}}
  end

  def get_result
    @result = outcomes[player.choice][computer.choice]
  end

end
