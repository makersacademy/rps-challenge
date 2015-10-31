class Game

  attr_reader :player, :player_hand, :cpu_hand

  def initialize player
    @player = player
    @player_hand = nil
    @cpu_hand = nil
  end

  def rock
    @player_hand = 'ROCK'
  end

  def paper
    @player_hand = 'PAPER'
  end

  def scissors
    @player_hand = 'SCISSORS'
  end

end