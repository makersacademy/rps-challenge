class Game
  CHOICES = [:rock, :paper, :scissors]
  attr_reader :player_1, :player_2, :last_winner, :best_of, :winner, :type

  def self.create(player_1, player_2, best_of = 3)
    @current = Game.new(player_1, player_2, best_of)
  end

  def initialize(player_1, player_2, best_of)
    @player_1 = player_1
    @player_2 = player_2
    @best_of = best_of
    @type = :single
  end

  def self.current
    @current
  end

  def play(player_1_choice, player_2_choice)
    update_last_round_winner(result(player_1_choice, player_2_choice))
  end

  def pretty_score
    "#{player_1.score}:#{player_2.score}"
  end

  def over?
    points_to_win == player_1.score || points_to_win == player_2.score
  end

  def confirm_winner
    update_final_winner(winning_player)
  end

  private

  def winning_player
    player_1.score == points_to_win ? player_1 : player_2
  end

  def update_final_winner(player)
    @winner = player
  end

  def update_last_round_winner(player)
    @last_winner = player
  end

  def result(player_1_choice, player_2_choice)
    return 0 if player_1_choice == player_2_choice
    if player_1_choice == loses_to(player_2_choice)
      player_2.update_score
      player_2
    else
      player_1.update_score
      player_1
    end
  end

  def loses_to(choice)
    CHOICES[index_of(choice) - 1]
  end

  def index_of(choice)
    CHOICES.find_index(choice)
  end

  def points_to_win
    (best_of + 1) / 2
  end

end
