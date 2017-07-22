class Game

  attr_reader :player_name, :player_choice, :computer_choice

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @computer_choice = options["computer_choice"]
  end
end
