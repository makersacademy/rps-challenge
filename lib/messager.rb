class Messager
  def multiplayer_messages(args)
    player, opponent, result = args
    string_maker(player.move, opponent.name, opponent.move, result)
  end

  def single_player_messages(player_move, opponent_move, result)
    string_maker(player_move, "Computer", opponent_move, result)
  end
    
  private

  def string_maker(player_move, opponent_name, opponent_move, result)
    player_move = move_converter(player_move)
    opponent_move = move_converter(opponent_move)
    result = result_converter(result)
    [
      "You chose #{player_move}",
      "#{opponent_name} chose #{opponent_move}",
      result
    ]
  end
  
  def move_converter(move)
    move.to_s.capitalize
  end

  def result_converter(result)
    result_strings = {
      win: "You win!",
      lose: "You lose!",
      draw: "It's a draw!"
    }
    result_strings[result]
  end
end
