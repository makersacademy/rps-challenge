
class Game

  @game = nil

  def self.start_game(player_name)
    @game = Game.new(player_name)
  end

  def self.game
    @game
  end

  attr_reader :player_name

  def initialize(player_name)
    @player_name = player_name
  end

  def name
    @player_name
  end

end
