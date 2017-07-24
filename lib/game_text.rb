class GameText
  attr_reader :round_winner, :player_1_text, :player_2_text

  def initialize
    @player_1_text = "Choose from the above!"
    @player_2_text = "Get on with it m8"
  end

  def update_round_winner(player)
    @round_winner = player == 0 ? "Draw!" : "#{player.name} wins the round!"
  end

end
