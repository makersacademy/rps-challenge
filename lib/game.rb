#understands what moves a player can make

class Game

  attr_reader :player_one, :player_two, :current_player, :move_count, :results, :winner, :draw

  def initialize(player_one, player_two, results = Results)
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
    @results = results.new
    @move_count = 0
    @winner = nil
    @draw = false
  end

  def switch_players
    current_player == player_one ? @current_player = player_two : @current_player = player_one
    @move_count += 1
  end

  def play(move)
    current_player.store_move(move)
  end

  def set_winner
    case result
    when player_one.show_last_move
      @winner = player_one
      @winner.add_win
    when player_two.show_last_move
      @winner = player_two
      @winner.add_win
    else
      @draw = true
    end
  end

  def result
    results.get_result(player_one.show_last_move, player_two.show_last_move)
  end

  def round_complete
    move_count >= 2 ? true : false
  end

  def reset_count
    @move_count = 0 if round_complete
  end

  def reset_draw
    @draw = false
  end
  

end
