class Game

  def rock(computer_choice)
    case computer_choice
      when "Rock"
        "Oups, it's a draw!"
      when "Scissors"
        "Great, you won this round!"
      when "Paper"
        "Sadly, you lost this one!"
    end
  end

  def scissors(computer_choice)
    case computer_choice
      when "Rock"
        "Sadly, you lost this one!"
      when "Scissors"
        "Oups, it's a draw!"
      when "Paper"
        "Great, you won this round!"
    end
  end

  def paper(computer_choice)
    case computer_choice
      when "Rock"
        "Great, you won this round!"
      when "Scissors"
        "Sadly, you lost this one!"
      when "Paper"
        "Oups, it's a draw!"
    end
  end
  #  def rock(choice)
  #   return "Oups, it's a draw !" if choice == "Rock"
  #   return "Great, you won this round !" if choice == "Scissors"
  #   return "Sadly, you lost this one!" if choice == "Paper"
  # end
end
