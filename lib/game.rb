

class Game

  def self.create(player)
    @game = Game.new(player)
    @player = player
  end

  def self.instance
    @game
  end

end
