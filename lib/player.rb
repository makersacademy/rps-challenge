class Player

  attr_reader :name, :choice

  def initialize(name, choice = '')
    @name = name
    @choice = choice
  end

  def rock
    @choice = 'rock'
  end

  def paper
    @choice = 'paper'
  end

  def scissors
    @choice = 'scissors'
  end

  def lizard
    @choice = 'lizard'
  end

  def spock
    @choice = 'spock'
  end

end
