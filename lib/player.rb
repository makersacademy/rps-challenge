class Player

  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
  end

  def selection(weapon)
    @player_choice = weapon
  end
  
end
