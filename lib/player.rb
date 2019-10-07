
class Player

attr_accessor :name, :move

  def initialize(name)
    @name = name
    @move = ["Rock", "Paper", "Scissors"].sample
  end

  def mymove(mymove)
    @move = mymove
  end

end
