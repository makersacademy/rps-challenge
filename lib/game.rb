class Game

  attr_reader :choices, :player_name, :player_choice, :computer_choice

  CHOICES = [:Paper, :Scissors, :Rock]

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @computer_choice = options["computer_choice"]
    @choices = CHOICES
  end

  def choose
    @choices.sample.to_s
  end
end
