require_relative 'rockpaperscissors'
require_relative 'game'

class GameChoice
  attr_reader :player_rps, :computer_rps, :result

  @name = nil

  def self.instance
    @name
  end

  def self.instance=(value)
    @name = value
  end

  def initialize(player_rps, computer_rps = RockPaperScissors.new)
    @player_rps = player_rps
    @computer = computer_rps
    @computer_rps = computer_rps.rock_paper_scissors
    self.class.instance = self
  end

  def win_tie_loose
    @result = nil
    if @player_rps == :Rock && @computer_rps == :Scissors
      @result = "You win :)"
    elsif @player_rps == :Rock && @computer_rps == :Paper
      @result = "Computer wins :("
    elsif @player_rps == :Paper && @computer_rps == :Scissors
      @result = "Computer wins :("
    elsif @player_rps == :Paper && @computer_rps == :Rock
      @result = "You win :)"
    elsif @player_rps == :Scissors && @computer_rps == :Rock
      @result = "Computer wins :("
    elsif @player_rps == :Scissors && @computer_rps == :Paper
      @result = "You win :)"
    else
      @result = "Tie!"
    end
  end
end
