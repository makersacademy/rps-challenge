class Player

attr_reader :name, :choice

  def initialize(player_name)
    @name = player_name
    @choice
  end

  def set_choice(player_choice)
    @choice = player_choice
  end

end
