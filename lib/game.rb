require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  @@choices = ["Rock", "Paper", "Scissors"]

  def initialize(player, computer)
    @player = player
    @computer = computer
    @set_computer_selection
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def self.choices
    @@choices
  end

  def set_player_choice(choice)
    @player.selection(choice)
  end

  def set_computer_selection
    @computer.selection
  end

  def result
    player_choice = @player.choice
    computer_choice = set_computer_selection
    game_logic(player_choice,computer_choice)
  end

  private

  def game_logic(player_choice, computer_choice)
    if player_choice == computer_choice
      return "Draw"
    end

    if (player_choice == "Rock" && computer_choice != "Paper")
      "Computer chose #{computer_choice}. #{@player.name} beats #{@computer.name}"
    elsif (player_choice == "Scissors" && computer_choice != "Rock")
      "Computer chose #{computer_choice}. #{@player.name} beats #{@computer.name}"
    elsif (player_choice == "Paper" && computer_choice != "Scissors")
      "Computer chose #{computer_choice}. #{@player.name} beats #{@computer.name}"
    else
      "Computer chose #{computer_choice}. #{@computer.name} beats #{@player.name}"
    end
  end
end
