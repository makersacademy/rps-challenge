class Player

  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
    @player_choice = nil
  end

  def player_move(player_choice)
    @player_choice = player_choice
  end
end
