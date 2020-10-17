class Game
  COMPUTER_NAMES = ["Tanya", "Mike", "Carlos", "Megan", "Beth", "Patricia", "Patrick", "Stewart"]
  CHOICES = ["ROCK", "PAPER", "SCISSORS"]

  def add_names(player_name)
    @computer_name = COMPUTER_NAMES.sample
    @player_name = player_name

  end

  def print_players
    "#{player_name} Vs. #{@computer_name.sample}"
  end

  def calculate_winner(user_input)
    @computer_input = CHOICES.sample
    case user_input
      when "ROCK"
        return "Noone" if computer == 1
        return "#{@computer_name}" if computer == 2
        return "#{@player_name}" if computer == 3
      when "PAPER"
        return "Noone" if computer == 2
        return "#{@computer_name}" if computer == 3
        return "#{@player_name}" if computer == 1
      when "SCISSORS"
        return "Noone" if computer == 3
        return "#{@computer_name}" if computer == 1
        return "#{@player_name}" if computer == 2
      end

  end

  def computer
    if @computer_input == "ROCK"
      return 1
    elsif @computer_input == "PAPER"
      return 2
    elsif @computer_input == "SCISSORS"
      return 3
    end
  end
end
