class Game

  attr_reader :players, :round_winner, :the_winner
  attr_accessor :tie_score

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @tie_score = 0
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

  def return_choice_of_weapon(num)
    weapons = {1 => 'Rock', 2 => 'Paper', 3 => 'Scissor'}
    weapons[num]
  end

  def computers_answer
    computer_player.computers_answer
  end

  def play
    computer_player.computer_answer(computer_player.computer_choice)
    compare
  end

private

  def winner_of_round(round_winner)
    @round_winner = round_winner
  end

  def compare
    if tie?
      tie_round
    else
      (players_choice - computers_answer) % 3 == 1 ? player_wins : computer_wins
    end
  end

  def player_wins
    winner_of_round(player_1.name)
    update_player_score
  end

  def computer_wins
    winner_of_round(computer_player.name)
    update_computer_score
  end

  def tie_round
    winner_of_round('Tie')
    update_tie_score
  end

  def update_player_score
    player_1.score += 1
  end

  def update_computer_score
    computer_player.score += 1
  end

  def update_tie_score
    @tie_score += 1
  end

  def tie?
    true if players_choice == computers_answer
  end

  # def game_winner
  #   player_1.score > computer_player.score ?
  # end

end
