class Player
  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
  end

  def choose
    player.choice(player_choice)
  end

  def choice(player_choice)
    @player_choice = player_choice
  end

end
