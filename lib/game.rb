class Game

  attr_reader :players

  def initialize(player, computer)
    @player = player
    @computer = computer
    @players = [player, computer]
    @beats = {
      "rock" => ["paper"],
      "paper" => ["scissors"],
      "scissors" => ["rock"], 
    }
  end

  def player
    @player
  end

  def computer
    @computer
  end

  def winner
    return "Draw! Try again" if @player.pick == @computer.pick
    return "Darn it. You lose." if @beats[@player.pick].include? @computer.pick 
    return "You win!" if @beats[computer.pick].include? @player.pick
  end

end