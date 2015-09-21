class Player

  attr_reader :name, :score
  attr_accessor :choice

  def initialize(name)
    @name = name
    @score = 0
  end

  def win
    @score +=1
    name
  end

end