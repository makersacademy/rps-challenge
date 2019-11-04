class Player

  attr_reader :name, :player_score, :move

  def initialize(name)
    @name = name
    @player_score = 0
  end

  def increase_score
    @player_score += 1
  end

  def last_move(move)
    @move = move
  end
end
