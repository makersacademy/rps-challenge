
class Player
    attr_reader :name, :move
    
  def initialize(name = 'pug')
    @name = name
    @move = []
  end

  def make_move(move)
    @move = move
  end
end
