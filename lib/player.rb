class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def select(move)
    if move.to_sym == :rock
      @move = move
    elsif move.to_sym == :paper
      @move = move
    elsif move.to_sym == :scissors
      @move = move
    else
      fail "Select 'Rock', 'Paper' or 'Scissors'."
    end
  end

end
