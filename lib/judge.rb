class Judge
  def compare(person: player, computer: computer)
    if person == computer
      :neither
    else
      case person
      when 'ROCK'
        computer == 'PAPER' ? :comp : :pers
      when 'PAPER'
        computer == 'SCISSORS' ? :comp : :pers
      when 'SCISSORS'
        computer == 'ROCK' ? :comp : :pers
      end
    end
  end
end
