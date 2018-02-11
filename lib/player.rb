class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @name = "Human" if @name == ""
  end

  def choose(move)
    @move = move.downcase.to_sym
  end

end
