require_relative 'computer.rb'

class Game
  attr_reader :player
  
  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @outcomes = { rock: [:lizard, :scissors],
              paper: [:rock, :spock],
              scissors: [:paper, :lizard],
              lizard: [:paper, :spock],
              spock: [:rock, :scissors] }
  end
  
  def players_name
    @player.name
  end
  
  def computers_choice
    @computers_choice = choose
  end
  
  def players_choice(choice)
    @player_choice = choice
  end
  
  def winner
    calculate_winner(@computers_choice, @player_choice)
    @winner
  end
  
  private
  
  def choose
    @computer.choose
  end
  
  def calculate_winner(computer, player)
    return @winner = "Draw" if computer == player
    @outcomes[computer].include?(player) ? @winner = "Computer" : @winner = @player
  end
  
end