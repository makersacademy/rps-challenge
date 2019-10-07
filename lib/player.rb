class Player
  
  VALID_MOVE = ['Rock', 'Paper', 'Scissors']
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def save_move(move)
    raise 'Not a valid choice' unless VALID_MOVE.include?(move)
    
    @move = move
  end

end
