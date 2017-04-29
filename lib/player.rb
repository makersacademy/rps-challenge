class Player
  attr_reader :name, :hand
  def initialize(name)
    @name = name
    @hand = 0
  end

  def rock
    @hand = 1
  end

  def paper
    @hand = 2
  end

  def scissors
    @hand = 3
  end

end
