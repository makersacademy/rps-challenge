class GameMessager
  attr_reader :round_winner

  def update_round_winner(player)
    @round_winner = player == 0 ? "Draw!" : "#{player.name} wins the round!"
  end

end
