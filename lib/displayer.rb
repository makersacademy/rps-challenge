class Displayer

  def get_image(choice)
    case choice
    when "rock"
      return '<i class="result_icon brown_text fas fa-hand-rock"></i>'
    when "paper"
      return '<i class="result_icon white_text fas fa-hand-paper"></i>'
    when "scissors"
      return '<i class="result_icon blue_text fas fa-hand-scissors"></i>'
    when "spock"
      return '<i class="result_icon tan_text fas fa-hand-spock"></i>'
    when "lizard"
      return '<i class="result_icon purple_text fas fa-hand-lizard"></i>'
    end
  end

  def get_result_string(winner_choice, loser_choice)
    case winner_choice
    when "rock"
      return "Rock smashes Scissors" if loser_choice == "scissors"
      return "Rock crushes Lizard" if loser_choice == "lizard"
    when "paper"
      return "Paper covers Rock" if loser_choice == "rock"
      return "Paper disproves Spock" if loser_choice == "spock"
    when "scissors"
      return "Scissors cuts Paper" if loser_choice == "paper"
      return "Scissors decapitates Lizard" if loser_choice == "lizard"
    when "spock"
      return "Spock vaporizes Rock" if loser_choice == "rock"
      return "Spock bends Scissors" if loser_choice == "scissors"
    when "lizard"
      return "Lizard eats Paper" if loser_choice == "paper"
      return "Lizard poisons Spock" if loser_choice == "spock"
    end
  end

  def get_button(tie_or_winner)
    return '<form action="/play_again" method="post">
      <button class="white" type="submit">Rematch!</button>
    </form>' if tie_or_winner == "tie"
    return '<form action="/play_again" method="post">
      <button class="white" type="submit">Play Again</button>
    </form>' if tie_or_winner == "winner"
  end

end
