class Game

#   def computer
#     @computer = ["rock", "paper", "scissors"].sample
#   end


  def play(choice)

    computer = ["rock", "paper", "scissors"].sample
    
    case choice    
      when "rock"
        case computer
          when "rock" then "you draw!"
          when "paper" then "you lost!"
          when "scissors" then "you won!"
        end
      when "paper"
        case computer
          when "rock" then "you won!"
          when "paper" then "you draw!"
          when "scissors" then "you lost!"
        end
      when "scissors"
        case computer
          when "rock" then "you lost!"
          when "paper" then "you won!"
          when "scissors" then "you draw!"
        end
      end
    end
end