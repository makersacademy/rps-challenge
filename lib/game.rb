class Game

  attr_reader :player, :weapons

  def initialize(player)
    @player = player
    @weapons = [:rock,:paper,:scissors]
  end

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.current_game
    @game
  end

end
