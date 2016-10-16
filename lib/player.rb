class Player


attr_reader :name, :choice

  def initialize(player)
    @name = player
  end

  def players_choice(choice)
    @choice = choice
  end
end
