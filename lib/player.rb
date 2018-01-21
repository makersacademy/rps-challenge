class Player

attr_reader :name, :player_selection

  def initialize(name)
  @name = name
  end

  def option(player_selection)
    @player_selection = player_selection
  end

end
