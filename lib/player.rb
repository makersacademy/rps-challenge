class Player

  attr_reader :name

  def initialize(name, move)
    @name = name
    @move = move
  end

  def player_move
    @move
  end

  def computer_move
    ['Paper', 'Rock', 'Scissors'].sample
  end


end
