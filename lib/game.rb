require_relative 'computer'

class Game

  attr_reader :player_choice, :computer_choice

  def initialize
    @player_choice
    @computer_choice = Computer.new.choice
  end

  def set_player_choice(choice)
    @player_choice= choice
  end

  def winner
    if @player_choice == @computer_choice
      'No one'
    elsif @player_choice == 'Rock' && @computer_choice == 'Scissors'
      'You'
    elsif @player_choice == 'Rock' && @computer_choice == 'Paper'
      'The computer'
    elsif @player_choice == 'Paper' && @computer_choice == 'Rock'
      'You'
    elsif @player_choice == 'Paper' && @computer_choice == 'Scissors'
      'The computer'
    elsif @player_choice == 'Scissors' && @computer_choice == 'Paper'
      'You'
    elsif @player_choice == 'Scissors' && @computer_choice == 'Rock'
      'The computer'
    end
  end
end
