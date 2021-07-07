class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = 0
  end

  def rock_move
    @move = :rock
  end

  def paper_move
    @move = :paper
  end

  def scissors_move
    @move = :scissors
  end

end
