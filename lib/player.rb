class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def save_move(move)
    raise 'Not a valid choice' unless ['Rock', 'Paper', 'Scissors'].include?(move)
    
    @move = move
  end

end