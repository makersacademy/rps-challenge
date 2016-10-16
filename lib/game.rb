class Game

  attr_reader :players, :round_winner

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    players.first
  end

  def computer_player
    players.last
  end

  def players_choice
    player_1.choice
  end

  def computers_answer
    computer_player.computer_choice
  end

  def winner_of_round(round_winner)
    @round_winner = round_winner
  end

  def compare
    if tie?
      winner_of_round('Tie')
    else
      (players_choice - computers_answer) % 3 == 1 ? player_wins : computer_wins
    end
  end

  def player_wins
    winner_of_round(player_1)
    update_player_score
  end

  def computer_wins
    winner_of_round(computer_player)
    update_computer_score
  end

  def update_player_score
  end

  def update_computer_score
  end

  def tie?
    true if players_choice == computers_answer
  end

end
