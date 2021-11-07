require './lib/player'

class Game
  attr_reader :game, :players, :outcome

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end
  
  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @outcome = ""
    @player1_win = "#{player1.name} wins!"
    @player2_win = "#{player2.name} wins!"
    @draw = "It's a draw!"
  end

  def player1
    @players[0]
  end 

  def player2
    @players[1]
  end 

  def calculate_winner(player1_choice, player2_choice)
    case player1_choice
      when "Rock"
        compare_rock_with(player2_choice)
      when "Paper"
        compare_paper_with(player2_choice)
      when "Scissors"
        compare_scissors_with(player2_choice)
    end
  end

  def compare_rock_with(player2_choice)
    case player2_choice
      when "Rock"
        @outcome = @draw
      when "Paper"
        @outcome = @player2_win
      when "Scissors"
        @outcome = @player1_win
    end
  end

  def compare_paper_with(player2_choice)
    case player2_choice
      when "Rock"
        @outcome = @player1_win
      when "Paper"
        @outcome = @draw
      when "Scissors"
        @outcome = @player2_win
    end
  end

  def compare_scissors_with(player2_choice)
    case player2_choice
      when "Rock"
        @outcome = @player2_win
      when "Paper"
        @outcome = @player1_win
      when "Scissors"
        @outcome = @draw
    end
  end
end
