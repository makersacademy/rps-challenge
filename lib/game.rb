class Game

  def self.create(player_1, player_2)
    @current_game ||= Game.new(player_1, player_2)
  end

  def self.current_game
    raise "No current game" if !@current_game
    @current_game
  end

  attr_reader :player_1, :player_2, :moves

  DEFAULT_MOVE_LIST = %w(rock paper scissors)

  def initialize(player_1, player_2, moves = DEFAULT_MOVE_LIST)
    @player_1 = player_1
    @player_2 = player_2
    @moves = moves
  end

end
