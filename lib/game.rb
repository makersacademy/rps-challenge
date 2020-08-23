class Game
  attr_accessor :player_1, :player_2, :game_mode

  def initialize(game_mode)
    @game_mode = game_mode
    @player_1 = nil
    @player_2 = nil
  end

  def self.init(game_mode)
    @game = Game.new(game_mode)
  end

  def self.add_players(player_1, player_2 = 'Hal3000')
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.player_1
    @player_1
  end
  
  def self.player_2
    @player_2
  end
  
  def self.game_mode
    @game.game_mode
  end

  def self.instance
    @game
  end
end