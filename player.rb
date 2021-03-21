class Player
  attr_accessor :name, :turn, :score

  def initialize(name)
    @name = name
    @score = 0
  end
end
