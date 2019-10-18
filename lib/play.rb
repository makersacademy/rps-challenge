def bot_move
  arr = ["r", "p", "s"].sample
  return arr
end

def bot(player_move, bot_move)
  player_pick = conv(player_move)
  bot_pick = conv(bot_move)
  st = "You picked #{player_pick} and bot picked #{bot_pick}."

  if player_move == bot_move
    p "#{st} it's a draw!"

  elsif player_move == "s"
    case bot_move
    when "p"
      p "#{st} You win!"
    when "r"
      p "#{st} You lose!"
    end

  elsif player_move == "r"
    case bot_move
    when "p"
      p "#{st} You lose!"
    when "s"
      p "#{st} You win!"
    end

  elsif player_move == "p"
    case bot_move
    when "s"
      p "#{st} You lose!"
    when "r"
      p "#{st} You win!"
    end
  end
end

def conv(pick)
  case pick
  when "s"
    return "Scissors"
  when "r"
    return "Rock"
  when "p"
    return "Paper"
  end
end
