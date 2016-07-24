class Game
  attr_reader :player_choice, :computer_choice

  def player_choice(choice)
    @player_choice = choice
  end

  def computer_choice
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def result
    return "Draw" if @player_choice == @computer_choice
    case @player_choice
    when "rock"
      if @computer_choice == "scissors"
        "win"
      else
        "lose"
      end
    when "paper"
      if @computer_choice == "rock"
        "win"
      else
        "lose"
      end
    when "scissors"
      if @computer_choice == "paper"
        "win"
      else
        "lose"
      end
    end
  end
end
