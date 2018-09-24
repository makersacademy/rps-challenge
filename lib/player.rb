class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name.split(' ').map { |x| x.capitalize }.join(' ')
  end

  def player_move(move)
    @move = move
  end
end
