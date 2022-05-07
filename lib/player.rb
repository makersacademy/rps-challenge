class Player

  attr_reader :player_choice, :name

  def initialize
    @name = name
    @player_choice = player_choice
  end

  def set_choice
    @player_choice.compare
  end


end