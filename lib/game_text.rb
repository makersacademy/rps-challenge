class GameText
  attr_reader :round_winner, :player_1_text, :player_2_text

  def initialize
    @player_1_text = "Choose from the above!"
    @player_2_text = "Get on with it m8"
  end

  def update_round_winner(player)
    @round_winner = player == 0 ? "Draw!" : "#{player.name} wins the round!"
  end

  def waiting_for_player_2(player_1_name, player_2_name)
    @player_1_text = "#{player_1_name} has chosen!"
    @player_2_text = "#{player_2_name}'s turn!"
  end

  def update_choice_messages(player_1, player_2)
    @player_1_text = "#{player_1[0]} chooses #{player_1[1].capitalize}!"
    @player_2_text = "#{player_2[0]} chooses #{player_2[1].capitalize}!"
  end

  def reset(player_1_name)
    @player_1_text = "#{player_1_name}'s turn!"
    @player_2_text = "Get on with it m8"
  end
end
