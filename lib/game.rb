class Game

  attr_reader :player_1, :player_2, :current_player, :opponent

  def initialize(player_1, player_2, mode)
    @player_1 = player_1
    @player_2 = player_2
    @mode = mode
    @current_player = @player_1
    @opponent = @player_2
  end

  def self.instance
    @game
  end

  def self.add(player_1, player_2, mode)
    @game = Game.new(player_1, player_2, mode)
  end

  def switch_turns
  @current_player = (@current_player == @player_1 ? @player_2 : @player_1)
  @opponent = (@opponent == @player_1 ? @player_2 : @player_1)
  end

end
