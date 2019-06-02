class Player
  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
  end

  def last_move
    @move
  end
end