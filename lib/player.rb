class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def select(move)
    if move == :rock
      @move = move
    elsif move == :paper
      @move = move
    elsif move == :scissors
      @move = move
    else
      fail "Select 'Rock', 'Paper' or 'Scissors'."
    end
  end

end
