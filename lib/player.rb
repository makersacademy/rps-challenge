class Player
  attr_reader :name
  attr_accessor :move

  def initialize(name = "ninja")
    @name = name
  end
end
