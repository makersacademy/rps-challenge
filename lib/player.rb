class Player

attr_reader :player_choice, :name

  def initialize(name)
    @name = name
    @player_choice
  end

  def player_move(move)
    @player_choice = move
  end

end
