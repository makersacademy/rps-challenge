class Game

  attr_reader :player_wins, :computer_shape

  def initialize(player_shape)
    @player_shape = player_shape
    @computer_shape = computer_shape_picker
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
  
  def computer_shape_picker
    ["rock", "paper", "scissors"].sample
  end

end