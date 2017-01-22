class Player

  attr_accessor :score, :name, :choice

  def initialize(name)
    @score = 0
    @name = name
    @choice = nil
  end

end
