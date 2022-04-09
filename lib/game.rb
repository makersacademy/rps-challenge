class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def rock
    @player.choose('Rock')
  end

  def paper
    @player.choose('Paper')
  end

  def rock
    @player.choose('Scissors')
  end

  
end