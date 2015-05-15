require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize playerClass
    @player_1 = playerClass.new
    @player_2 = playerClass.new
  end

  def process_turn
    fail "Game already won" if winner?
    if player_1.check_turn == player_2.check_turn
      puts "Go again"
    else
      if player_1.check_turn == "Rock" && player_2.check_turn == "Scissors"
        puts "Player 1 wins"
        player_1.add_round_win
        check_round_wins
      elsif player_1.check_turn == "Rock" && player_2.check_turn == "Paper"
        puts "Player 2 wins"
        player_2.add_round_win
        check_round_wins
      elsif player_1.check_turn == "Scissors" && player_2.check_turn == "Paper"
        puts "Player 1 wins"
        player_1.add_round_win
        check_round_wins
      elsif player_1.check_turn == "Scissors" && player_2.check_turn == "Rock"
        puts "Player 2 wins"
        player_2.add_round_win
        check_round_wins
      elsif player_1.check_turn == "Paper" && player_2.check_turn == "Rock"
        puts "Player 1 wins"
        player_1.add_round_win
        check_round_wins
      elsif player_1.check_turn == "Paper" && player_2.check_turn == "Scissors"
        puts "Player 2 wins"
        player_2.add_round_win
        check_round_wins
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





