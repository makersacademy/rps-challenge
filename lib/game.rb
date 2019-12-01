class Game

  attr_accessor :player1, :computer

  WIN_HAND = {
    Rock: "Scissors",
    Scissors: "Paper",
    Paper: "Rock"
  }

  def initialize(player1, computer)
    @player1 = player1
    @computer = computer
  end

  def get_result
    @computer.random_select
    return @player1.name if @computer.choice == WIN_HAND[@player1.choice.to_sym]
    return @computer.name if @player1.choice == WIN_HAND[@computer.choice.to_sym]
    "Draw"
  end

  def result

  end
end
