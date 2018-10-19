class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer = Computer.new)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def result
    @computer.pick_move
    if @player.move == "Rock" && @computer.move == "Scissors"
      "Win"
    elsif @player.move == "Scissors" && @computer.move == "Paper"
      "Win"
    elsif @player.move == "Paper" && @computer.move == "Rock"
      "Win"
    elsif @player.move == "Paper" && @computer.move == "Scissors"
      "Lose"
    elsif @player.move == "Scissors" && @computer.move == "Rock"
      "Lose"
    elsif @player.move == "Rock" && @computer.move == "Paper"
      "Lose"
    elsif @player.move == @computer.move
      "Draw"
    end
  end

  def message
    result
    if result == "Win"
      "You win!"
    elsif result == "Lose"
      "You lose!"
    elsif result == "Draw"
      "Draw!"
    end
  end
end
