class Game

  attr_reader :player, :computer, :outcomes, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
    @outcomes = {rock: {rock: :draw, paper: :loss, scissors: :win},
                paper: {rock: :win, paper: :draw, scissors: :loss},
                scissors: {rock: :loss, paper: :win, scissors: :draw}}
  end

  def get_result
    @result = outcomes[player.choice][computer.choice]
  end

end
