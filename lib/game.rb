class Game

  def Game.new_game(player)
    @game = Game.new(player)
  end

  def Game.instance
    @game
  end

  attr_reader :player

  def initialize(player)
    @player = player
  end


end
