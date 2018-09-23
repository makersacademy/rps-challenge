class Player
  attr_reader :choice, :name, :score

  def initialize(name = '')
    @name = name
    @choice = nil
    @score = 0
  end
end
