class ComputerRPS
  
  def random_number
    rand(1..3)
  end

  def rock_paper_scissors
    case random_number
      when 1
        "Rock"
      when 2
        "Paper"
      else
        "Scissors"
    end
  end

end
