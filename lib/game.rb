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

  def get_winner(player, opponent)
    result = ""
    if player.move == opponent.move
      @result = "It's a draw!!"
    else    
      if player.move == "rock"
        opponent.move == "paper" ? @result = "#{opponent.name} wins!!" 
                                 : @result = "#{player.name} wins!!"
      end
      if player.move == "scissors"
        opponent.move == "rock" ? @result = "#{opponent.name} wins!!" 
          : @result = "#{player.name} wins!!"
      end
      if player.move == "paper"
        opponent.move == "scissors" ? @result = "#{opponent.name} wins!!" 
          : @result = "#{player.name} wins!!"
      end
    end 
    return @result
  end 

end
