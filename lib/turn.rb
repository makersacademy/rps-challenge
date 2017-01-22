class Turn
  attr_reader :player_name, :player_utensil, :bot_utensil

  def initialize(options)
    @player_name = options["player_name"]
    @player_utensil = options["player_utensil"]
    @bot_utensil = options["bot_utensil"]
  end

end
