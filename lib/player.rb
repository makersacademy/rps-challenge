class Player
  attr_reader :name, :player_move

  def initialize(name = 'Gandalf')
    @name = name
    @player_move = player_move
  end

  def players_move(move)
    @player_move = move
  end
end

