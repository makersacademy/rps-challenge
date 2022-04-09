require_relative 'computer.rb'
require_relative 'player.rb'

class Result
  RULES = { 
    "Rock" => "Scissors",
    "Paper" => "Rock",
    "Scissors" => "Paper"
  }

  def initialize(player = Player.new("Player"), computer = Computer.new)
    @player = player
    @computer = computer
  end

  def winner
    return @player if player_win
    return @computer if computer_win
    return "Tie"
  end

  private

  def player_win
    RULES[@player.move] == @computer.move
  end

  def computer_win
    RULES[@computer.move] == @player.move
  end
end