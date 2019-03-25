class RPSGame
  attr_reader :names, :score, :turn

  def initialize(player1, player2)
    @names = [player1, player2]
    @turn = @names
  end

  def self.create(player1, player2)
    @rps = RPSGame.new(player1, player2)
  end

  def self.instance
    @rps
  end

  def player1
    @names.first
  end

  def player2
    @names.last
  end

  def turn
    @turn.rotate(1)
  end
end
