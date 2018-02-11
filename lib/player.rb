class Player

  attr_reader :name, :move, :score

  def initialize(name)
    @name = name
    @name = "Human" if @name == ""
    @score = 0
  end

  def choose(move)
    @move = move.downcase.to_sym
  end

end
