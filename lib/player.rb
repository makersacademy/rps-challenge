class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def player_move
    'Rock'
  end

  def computer_move
    'Paper'
  end


end
