require_relative "rps_computer_selector"

class RpsLogic

  def initialize(user_choice, computer_choice = RpsComputerSelector.new)
    @user_choice = user_choice
    @computer_choice = computer_choice.get_choice
    @result = nil
  end

  attr_reader :computer_choice

  def calculate
    if @user_choice == 'Rock' && @computer_choice == 'Scissors'
      @result = 'You win!'
    elsif @computer_choice == 'Rock' && @user_choice == 'Scissors'
      @result = 'Computer Wins'
    elsif @user_choice == 'Paper' && @computer_choice == 'Rock'
      @result = 'You win!'
    elsif @computer_choice == 'Paper' && @user_choice == 'Rock'
      @result = 'Computer Wins'
    elsif @user_choice == 'Scissors' && @computer_choice == 'Paper'
      @result = 'You win!'
    elsif @computer_choice == 'Scissors' && @user_choice == 'Paper'
      @result = 'Computer Wins'
    else
      @result = "It's a draw"
    end
  end
end