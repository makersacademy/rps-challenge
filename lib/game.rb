#understands what moves a player can make

class Game

  attr_reader :player_one, :player_two, :current_player, :move_count

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
    @move_count = 0
  end

  def switch_players
    current_player == player_one ? @current_player = player_two : @current_player = player_one
    @move_count += 1
  end

  def round_complete
    move_count >= 2 ? true : false
  end

  private

  def reset_count
    @move_count = 0 if round_complete
  end

end
