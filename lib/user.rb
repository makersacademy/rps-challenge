class User
  attr_reader :name, :move

  def initialize(name = 'Computer', move = nil)
    @name = name
    @move = move
  end
end
