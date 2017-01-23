require_relative 'computer'

class Game
  attr_reader :player, :computer, :computer_choice, :player_choice, :result

  @game_name = nil

  def self.instance
    @game_name
  end

  def self.instance=(value)
    @game_name = value
  end

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    self.class.instance = self
  end

  def player_rps(choice)
    @player_choice = choice
  end

  def computer_rps
    @computer_choice = @computer.rock_paper_scissors
  end

  def win_tie_loose
    @result = nil
    if @player_choice == :Rock && @computer_choice == :Scissors
      @result = "You win :)"
    elsif @player_choice == :Rock && @computer_choice == :Paper
      @result = "Computer wins :("
    elsif @player_choice == :Paper && @computer_choice == :Scissors
      @result = "Computer wins :("
    elsif @player_choice == :Paper && @computer_choice == :Rock
      @result = "You win :)"
    elsif @player_choice == :Scissors && @computer_choice == :Rock
      @result = "Computer wins :("
    elsif @player_choice == :Scissors && @computer_choice == :Paper
      @result = "You win :)"
    else
      @result = "Tie!"
    end
  end
end
