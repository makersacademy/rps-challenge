class Game

  attr_reader :player_one, :player_two, :current_player

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
  end

  def switch_players
    current_player == player_one ? @current_player = player_two : @current_player = player_one
  end

end
