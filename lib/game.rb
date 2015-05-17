require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize playerClass
    @player_1 = playerClass.new
    @player_2 = playerClass.new
  end

  def process_turn
    check_round_wins
    return "Game already won" if winner?
    if player_1.check_turn == player_2.check_turn
      "Go again"
    else
      if player_1.check_turn == "Rock" && player_2.check_turn == "Scissors" ||
        player_1.check_turn == "Rock" && player_2.check_turn == "Lizard" ||
         player_1.check_turn == "Scissors" && player_2.check_turn == "Paper" ||
         player_1.check_turn == "Scissors" && player_2.check_turn == "Lizard" ||
         player_1.check_turn == "Paper" && player_2.check_turn == "Rock" ||
         player_1.check_turn == "Paper" && player_2.check_turn == "Spock" ||
         player_1.check_turn == "Spock" && player_2.check_turn == "Scissors" ||
         player_1.check_turn == "Spock" && player_2.check_turn == "Rock" ||
         player_1.check_turn == "Lizard" && player_2.check_turn == "Spock" ||
         player_1.check_turn == "Lizard" && player_2.check_turn == "Paper"
         player_1.add_round_win
      else
        player_2.add_round_win
      end
    end
  end

  def check_round_wins
    player_1.wins
    player_2.wins
  end

  def winner?
    players.any?(&:winner?)
  end

  def players
    [player_1, player_2]
  end

end





