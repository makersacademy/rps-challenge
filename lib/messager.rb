class Messager
  def messages(player, opponent, result)
    player_move = move_converter(player.move)
    opponent_move = move_converter(opponent.move)
    result = result_converter(result)
    {
      player_move: "You chose #{player_move}",
      opponent_move: "#{opponent.name} chose #{opponent_move}",
      result: result
    }
  end

  private
  
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
