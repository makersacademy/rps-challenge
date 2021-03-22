require_relative './player.rb'

class RPS
  attr_reader :player

  def self.create(player_1)
    @game = RPS.new(player_1)
  end
  
  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  def calculate_winner(player_1, computer)
    if player_1 == computer
      outcome = "Great minds think alike, It's a draw!"
    elsif player_1 == "Rock"
      if computer == "Paper"
        outcome = "Paper covers rock. The computer wins!"
      elsif computer == "Scissors"
        outcome = "Rock smashes scissors. #{@player.name} wins!"
      end
    elsif player_1 == "Paper"
      if computer == "Scissors"
        outcome = "Scissors cuts paper. The computer wins!"
      elsif computer == "Rock"
        outcome = "Paper covers rock. #{@player.name} wins!"
      end
    elsif player_1 == "Scissors"
      if computer == "Rock"
        outcome = "Rock smashes scissors. The computer wins!"
      elsif computer == "Paper"
        outcome = "Scissors cuts paper. #{@player.name} wins!"
      end
    end
    return outcome
  end
end
