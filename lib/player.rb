class Player
  attr_reader :name
  attr_accessor :score, :choice

  def initialize(name)
    @name = name
    @choice = nil
    @score = 0
  end

end
