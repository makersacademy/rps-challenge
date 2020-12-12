class Game

  attr_reader :player_wins

  def initialize(player_shape)
    @player_shape = player_shape
    @computer_shape = computer_shape
    @player_wins = false
  end

  def winner_calculator
    if @player_shape == "rock" && @computer_shape == "scissors"
      @player_wins = true
    elsif @player_shape == "scissors" && @computer_shape == "paper"
      @player_wins = true
    elsif @player_shape == "paper" && @computer_shape == "rock"
      @player_wins = true
    end
  end
  
  def computer_shape
    ["rock", "paper", "scissors"].sample
  end

end