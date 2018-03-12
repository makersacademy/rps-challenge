class Player

  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
  end

  def choice(player_choice)
    @player_selection = player_choice
  end

end
