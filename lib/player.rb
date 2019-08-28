class Player
  def initialize(game = Game.new)
    @choices = game.choices
    @computer = game.play
  end
end
