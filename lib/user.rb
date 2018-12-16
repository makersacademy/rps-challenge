class User
  attr_reader :name
  attr_accessor :life, :move

  def initialize(name = 'Computer', move = nil, life = 3)
    @name = name
    @move = move
    @life = life
  end

  def round(move)
    @move = move
  end

  def decrease_life
    @life -= 1
  end
end
