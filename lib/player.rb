class Player

attr_reader :name, :attack

  def initialize(name = 'Player 1')
    @name = name
    @attack = nil
  end

  def rock
    @attack = "Rock!"
  end

  def paper
    @attack = "Paper!"
  end

  def scissors
    @attack = "Scissors!"
  end
end
