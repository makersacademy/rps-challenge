class Game

  def self.create(player)
    @game_state = Game.new(player)
  end

  def self.instance
    @game_state
  end

  attr_reader :player, :player_move

  def initialize(player)
    @player = player
  end

  def make_move(move)
    @player_move = move
  end

end