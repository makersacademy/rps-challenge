class Game
  CHOICES = [:rock, :paper, :scissors]
  attr_reader :human_player, :computer_player, :last_winner, :best_of, :winner

  def self.create(human_player, computer_player, best_of = 3)
    @current = Game.new(human_player, computer_player, best_of)
  end

  def initialize(human_player, computer_player, best_of)
    @human_player = human_player
    @computer_player = computer_player
    @best_of = best_of
  end

  def self.current
    @current
  end

  def play(human_choice, computer_choice)
    update_last_round_winner(result(human_choice, computer_choice))
  end

  def score
    [human_player.score, computer_player.score]
  end

  def over?
    points_to_win == human_player.score || points_to_win == computer_player.score
  end

  def confirm_winner
    update_final_winner(winning_player)
  end

  private

  def winning_player
    human_player.score == points_to_win ? human_player : computer_player
  end

  def update_final_winner(player)
    @winner = player
  end

  def update_last_round_winner(player)
    @last_winner = player
  end

  def result(human_choice, computer_choice)
    return 0 if human_choice == computer_choice
    if human_choice == loses_to(computer_choice)
      computer_player.update_score
      computer_player
    else
      human_player.update_score
      human_player
    end
  end

  def loses_to(choice)
    CHOICES[index_of(choice) - 1]
  end

  def index_of(choice)
    CHOICES.find_index(choice)
  end

  def points_to_win
    ( best_of + 1 ) / 2
  end

end
