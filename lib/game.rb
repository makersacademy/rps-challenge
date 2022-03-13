class Game

  attr_reader :player

  def initialize(player)
    @player = player
    @options =["Rock", "Paper", "Scissors"]
  end

  def cpu_answer
    @options.sample
  end

  def winner(player_answer, cpu_answer)
    if player_answer == "Rock"
      case cpu_answer
        when "Rock"
          "Both sides tried hard, but unfortunately it ended in a draw..."
        when "Scissors"
          "You destroyed your opponent, your win will be remembered for an age"
        else
          "Well that was embarassing, you should leave town for a while, you LOST"
        end
    elsif player_answer == "Paper"
      case cpu_answer
        when "Rock"
          "You destroyed your opponent, your win will be remembered for an age"
        when "Scissors"
          "Well that was embarassing, you should leave town for a while, you LOST"
        else
          "Both sides tried hard, but unfortunately it ended in a draw..."
        end
    else player_answer
      case cpu_answer
        when "Rock"
          "Well that was embarassing, you should leave town for a while, you LOST"
        when "Scissors"
          "Both sides tried hard, but unfortunately it ended in a draw..."
        else
          "You destroyed your opponent, your win will be remembered for an age"
        end
    end
  end
  
    





  
end