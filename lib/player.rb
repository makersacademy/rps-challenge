class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def option(player_selection)
    @player_selection = player_selection
  end

end
