class Player

  attr_reader :name
  attr_accessor :move

  def initialize(name, move = nil)
    @name = name
    @move = move
  end

end
