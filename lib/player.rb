class Player
  attr_reader :name, :choice
  
  def initialize(name)
    @name = name
  end

  def input_choice(player_choice)
    @choice = player_choice
  end
end
