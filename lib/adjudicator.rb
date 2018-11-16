class Adjudicator
  attr_reader :result, :p1move, :p2move

  def initialize(play1, play2)
    @p1move = play1.move
    @p2move = play2.move
  end

end
