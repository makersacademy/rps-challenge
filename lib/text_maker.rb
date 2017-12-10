class TextMaker
  def title(player1, player2)
    "#{player1.name} VS #{player2.name}"
  end

  def choice_text(player)
    "#{player.name} chooses #{player.choice}"
  end

  def play_text(player1, player2, winner)
    "#{choice_text(player1)},<br>#{choice_text(player2)},<br>#{winner} Wins!"
  end
end
