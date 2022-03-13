class Game
  attr_reader :player, :answers

  def initialize(player)
    @player = player
    @answers = ["Rock","Paper","Scissors"]
  end

  def pc_answer
    @answers.sample
  end

  def result(player_answer,pc_answer)
    if player_answer == "Rock"
      case pc_answer
      when "Rock"
        "It's a tie!"
      when "Scissors"
        "You've won!"
      else
        "You've lost :("
      end
    elsif player_answer == "Scissors"
      case pc_answer
      when "Rock"
        "You've lost :("
      when "Scissors"
        "It's a tie!"
      else
        "You've won!"
      end
    else
      case pc_answer
      when "Rock"
        "You've won!"
      when "Scissors"
        "You've lost :("
      else
        "It's a tie!"
      end
    end
  end
  

end