class Player
  attr_reader :name, :ai
  attr_accessor :score

  def initialize(name, ai = false)
    @name = name
    @score = 0
    @ai = ai
  end
end