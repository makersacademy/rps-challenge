class Game
  attr_reader :game_type, :players, :player_1_move

  def initialize(game_type)
    @game_type = game_type
  end

  def self.create(game_type)
    @game = Game.new(game_type)
  end
  
  def self.instance
    @game
  end

  def grab_player_1(player)
    @players = []
    @players.push(player)
  end

  def grab_player_move(move)
    @player_1_move = move
  end

end
