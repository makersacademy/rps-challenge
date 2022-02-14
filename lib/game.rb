require_relative './player'

class Game
  
  attr_reader :result

  def initialize(player, opponent)
    @players = [player, opponent]
    @result = ""
  end

  def player
    @players.first
  end

  def opponent
    @players.last
  end

  def results
    if player.move == opponent.move
      @result = "It's a draw!!"
    else  
      winner
    end
  end 

  private

  def winner
    if ((player.move == "rock" && opponent.move == "paper") || 
      (player.move == "scissors" && opponent.move == "rock") || 
      (player.move == "paper" && opponent.move == "scissors"))
      @result = "#{opponent.name} wins!!" 
    else
      @result = "#{player.name} wins!!"
    end  
  end 

end
