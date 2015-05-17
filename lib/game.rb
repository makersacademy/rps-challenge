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
    if match?
      "Go again"
    else
      if rock_wins? || scissor_wins? || paper_wins? || lizard_wins? || spock_wins?
        player_1.add_round_win
        "You win"
      else
        player_2.add_round_win
        "Computer wins"
      end
    end
  end

  def check_round_wins
    player_1.wins
    player_2.wins
  end

  def match?
    player_1.check_turn == player_2.check_turn
  end

  #RESULT EVALUATIONS
  def rock_wins?
    player_1.check_turn == "Rock" && player_2.check_turn == "Scissors" ||
    player_1.check_turn == "Rock" && player_2.check_turn == "Lizard"
  end

  def scissor_wins?
    player_1.check_turn == "Scissors" && player_2.check_turn == "Paper" ||
    player_1.check_turn == "Scissors" && player_2.check_turn == "Lizard"
  end

  def paper_wins?
    player_1.check_turn == "Paper" && player_2.check_turn == "Rock" ||
    player_1.check_turn == "Paper" && player_2.check_turn == "Spock"
  end

  def lizard_wins?
     player_1.check_turn == "Lizard" && player_2.check_turn == "Spock" ||
     player_1.check_turn == "Lizard" && player_2.check_turn == "Paper"
  end

  def spock_wins?
     player_1.check_turn == "Spock" && player_2.check_turn == "Scissors" ||
     player_1.check_turn == "Spock" && player_2.check_turn == "Rock"
  end

  def winner?
    players.any?(&:winner?)
  end

  def players
    [player_1, player_2]
  end

end





