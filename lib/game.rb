class Game
  attr_reader :player_choice,  :options
  attr_accessor :computer_choice

  def initialize(choice)
    @player_choice = choice
    @options = ['rock', 'paper', 'scissors']
    set_computer_choice
  end

  def set_computer_choice
    num = Kernel.rand(30)
    @computer_choice = @options[0] if num > 0 && num < 10
    @computer_choice = @options[1] if num > 10 && num < 20
    @computer_choice = @options[2] if num > 20 && num < 30
  end

  def invalid_choice?
     return true unless @options.include?(player_choice)
  end

  def win?
    return true if @player_choice == 'rock' && @computer_choice == 'scissors'
    return true if @player_choice == 'paper' && @computer_choice == 'rock'
    return true if @player_choice == 'scissors' && @computer_choice == 'paper'
    return false
  end

  def match?
    computer_choice == player_choice
  end
end
