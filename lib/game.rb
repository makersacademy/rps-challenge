class Game
  DEFAULT_OPPONENT = 'Rocky McRock Face'
  attr_reader :p1, :p2

  def initialize(player1, player2 = DEFAULT_OPPONENT)
    @p1 = player1
    @p2 = player2
  end

end
