
class Player

  attr_reader :name, :made_a_move

  def initialize(name)
    @name = name
    @made_a_move = false
  end

  def make_move
    @made_a_move = true
  end

end
