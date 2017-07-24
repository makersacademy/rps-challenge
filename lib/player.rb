# this class holds the players name and his current choice
class Player

  attr_reader :name, :current_choice

  def initialize(name)
    @name = name
  end

  def choose_option(player_choice)
    @current_choice = player_choice
  end

end
