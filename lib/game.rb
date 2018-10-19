class Game
  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    if @player.move == "Rock" && @computer.move == "Scissors"
      "Win"
    elsif @player.move == "Scissors" && @computer.move == "Rock"
      "Lose"
    elsif @player.move == @computer.move
      "Draw"
    end
  end
end
