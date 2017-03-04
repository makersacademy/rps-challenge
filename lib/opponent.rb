class Opponent

  def self.create_opponent
    @opponent = Opponent.new
  end

  def self.instance
    @opponent
  end

  def opponent_move(opponent_move=@move)
    @move
  end

  def move
    @move = ['Rock', 'Paper', 'Scissors'].sample
  end
end
