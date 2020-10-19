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
        @winner = "Noone" if @computer_input == "ROCK"
        @winner = @computer_name if @computer_input == "PAPER"
        @winner = @player_name if @computer_input == "SCISSORS"
      when "PAPER"
        @winner = "Noone" if @computer_input == "PAPER"
        @winner = @computer_name if @computer_input == "SCISSORS"
        @winner = @player_name if @computer_input == "ROCK"
      when "SCISSORS"
        @winner = "Noone" if @computer_input == "SCISSORS"
        @winner = @computer_name if @computer_input == "ROCK"
        @winner = @player_name if @computer_input == "PAPER"
    end
  end

  def print_winner
    @winner
  end

  def again
    @played = false
  end
  attr_reader :player_name, :computer_name, :played
end
