class Turn

  attr_reader :player_name, :player_choice, :computer_choice

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @computer_choice = options["computer_choice"]
  end

  def win
    @player_choice == :rock && @computer_choice == :scissors ||
    @player_choice == :paper && @computer_choice == :rock ||
    @player_choice == :scissors && @computer_choice == :paper
  end

  def lose
    @player_choice == :rock && @computer_choice == :paper ||
    @player_choice == :paper && @computer_choice == :scissors ||
    @player_choice == :scissors && @computer_choice == :rock
  end

  def draw
    @player_choice == @computer_choice
  end
end
