class Game
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  # def action(rps)
    # if rps == ROCK
    # elsif rps == PAPER
    # elsif rps == SCISSORS
    # end
  # end

end
