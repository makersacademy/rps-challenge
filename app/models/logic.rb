class Game
  COMPUTER_NAMES = ["Tanya", "Mike", "Carlos", "Megan", "Beth", "Patricia", "Patrick", "Stewart"]
  CHOICES = ["ROCK", "PAPER", "SCISSORS"]

  def initialize
    @played = false
  end

  def add_names(player_name)
    @computer_name = COMPUTER_NAMES.sample
    @player_name = player_name

  end

  def print_players
    "#{player_name} Vs. #{@computer_name.sample}"
  end

  def calculate_winner(user_input)
    @computer_input = CHOICES.sample
    @played = true
    case user_input
      when "ROCK"
        return "Noone" if @computer_input == "ROCK"
        return "#{@computer_name}" if @computer_input == "PAPER"
        return "#{@player_name}" if @computer_input == "SCISSORS"
      when "PAPER"
        return "Noone" if @computer_input == "PAPER"
        return "#{@computer_name}" if @computer_input == "SCISSORS"
        return "#{@player_name}" if @computer_input == "ROCK"
      when "SCISSORS"
        return "Noone" if @computer_input == "SCISSORS"
        return "#{@computer_name}" if @computer_input == "ROCK"
        return "#{@player_name}" if @computer_input == "PAPER"
    end
  end

  attr_reader :player_name, :computer_name
end
