class Game


  def initialize
    @rules = { paper: [:scissors],
              rock: [:paper],
              scissors: [:rock] }
  end

  def game(player_choice, cpu_choice)
    cpu = cpu_choice
    if player == cpu
      "CPU chooses #{cpu} - It's a tie!"
    elsif
      @rules[player].include? cpu
      "CPU chooses #{cpu} - YOU LOSE"
    else
      "CPU chooses #{cpu} - YOU WIN!"
    end
  end
end

