class Rpsls
attr_reader :computer_bet, :player

  def initialize player
    @computer_bet = rand(5)
    @player = player
  end

  def number_to_name(number)
    case number
    when 0
      return "rock"
    when 1
      return "Spock"
    when 2
      return "paper"
    when 3
      return "lizard"
    when 4
      return "scissors"
    else
      return "Not defined"
    end
  end

  def name_to_number(name)
    case name
    when "rock"
      return 0
    when "Spock"
      return 1
    when "paper"
      return 2
    when "lizard"
      return 3
    when "scissors"
      return 4
    else
      return "Not defined"
    end
  end

  def action(player_bet)
    case player_bet + number_to_name(computer_bet)
    when "scissorspaper", "paperscissors"
      return "scissors cut paper"
    when "paperrock", "rockpaper"
      return "paper covers rock"
    when "rocklizard", "lizardrock"
      return "rock crushes lizard"
    when "lizardSpock", "Spocklizzard"
      return "lizard poisons Spock"
    when "Spockscissors", "scissorsSpock"
      return "Spock smashes scissors"
    when "scissorslizard", "lizardscissors"
      return "scissors decapitate lizard"
    when "paperSpock", "Spockpaper"
      return "paper disproves Spock"
    when "rockscissors", "scissorsrock"
      return "rock crushes scissors"
    when "lizardpaper", "paperlizard"
      return "lizard eats paper"
    when "Spockrock", "rockSpock"
      return "Spock vaporizes rock"
    else
      return "TIE"
    end
  end

  def winner(player_bet)
    player_number = name_to_number(player_bet)
    computer_number = computer_bet

    computer_number == player_number ? ( return "#{player} and computer tie!" ) : (((computer_number - player_number) % 5) < 3? (return "Computer wins") : (return "#{player} wins" ))

  end

end
