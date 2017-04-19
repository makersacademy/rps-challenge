class Turn
  attr_reader :player_name, :player_choice, :opposition_choice

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @opposition_choice = options["opposition_choice"]
  end
end
