class Game
  attr_reader :player_name

  def self.current_game
    @current_game
  end

  def self.create(player_name:)
    @current_game = Game.new(player_name: player_name)
  end

  def initialize(player_name:)
    @player_name = player_name 
  end
end
