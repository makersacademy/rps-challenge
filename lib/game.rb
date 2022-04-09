class Game

  attr_reader :player
  
  def initialize(player)
    @player = player
  end

  def rock
    @player.choice('Rock')
  end

  def paper
    @player.choice('Paper')
  end

  def rock
    @player.choice('Scissors')
  end

  
end