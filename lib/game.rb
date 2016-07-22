
class Game

  attr_reader :player, :selection

  def initialize(player)
    @player = player
    @selection = nil
  end

  def rock
    @selection = 'rock'
  end

  def paper
    @selection = 'paper'
  end

  def scissors
    @selection = 'scissors'
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
