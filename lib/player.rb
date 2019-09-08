class Player
  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
  end

  def make_choice(player_choice)
    @player_choice = player_choice
  end
end
