class Player
  attr_reader :name, :player_move

  def initialize(name)
    @name = name
    @player_move = nil
  end

  def player_move(move=nil)
    @player_move = move
  end

  def player_status
    "#{@name} has chosen #{@player_move}"
  end

end
