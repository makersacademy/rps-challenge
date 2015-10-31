class Player
 
  attr_reader :name, :hand

  def initialize name
    @name = name
    @hand = nil
  end

  def rock
    @hand = 'ROCK'
  end

  def paper
    @hand = 'PAPER'
  end

  def scissors
    @hand = 'SCISSORS'
  end

end