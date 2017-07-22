class Player

  attr_reader :name, :pick

  def initialize(name)
    @name = name
    @pick = nil
  end

  def rock
    @pick = 'rock'
  end

  def paper
    @pick = 'paper'
  end

  def scissors
    @pick = 'scissors'
  end
end
