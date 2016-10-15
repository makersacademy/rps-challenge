require_relative 'player'

class Game

  def initialize(player = Player.new("Mystery Player"))
    @player = player
    @opponent = "The Computer"
  end

  def view_choices
    @choices = [:Rock, :Paper, :Scissors]
  end

  def player_selection(selection)
    @player_selection = selection
  end

  def computer_selection
    @choices.sample
  end

  def result
    case
      when @player_selection == :Rock && computer_selection == :Rock
        "You both chose the same. It's a draw!"
      when @player_selection == :Rock && computer_selection == :Paper
        "The winner is #{@opponent}"
      when @player_selection == :Rock && computer_selection == :Scissors
        "The winner is #{@player.capitalize}"
      when @player_selection == :Paper && computer_selection == :Rock
        "The winner is #{@player.capitalize}"
      when @player_selection == :Paper && computer_selection == :Paper
        "You both chose the same. It's a draw!"
      when @player_selection == :Paper && computer_selection == :Scissors
        "The winner is #{@opponent}"
      when @player_selection == :Scissors && computer_selection == :Rock
        "The winner is #{@opponent}"
      when @player_selection == :Scissors && computer_selection == :Paper
        "The winner is #{@player.capitalize}"
      when @player_selection == :Scissors && computer_selection == :Scissors
        "You both chose the same. It's a draw!"
    end
  end
end
