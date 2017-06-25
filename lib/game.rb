require "./lib/player.rb"
require "./lib/computer.rb"

class Game

  attr_reader :weapons

  def initialize(player1, player2)
    @players = [player1, player2]
    @weapons = { "Rock" => "Scissors",
      "Paper" => "Rock",
      "Scissors" => "Paper" }
    end

    def player1
      @player1 = @players.first
    end

    def player2
      @player2 = @players.last
    end

    def player1_choice
      @player1.weapon
    end

    def player2_choice
      @player2.weapon
    end

    def result
      if player1_choice == player2_choice
        "It's a draw!"
      elsif @weapons[player1_choice] == player2_choice
        "Congratulations #{@player1.name}, you win!"
      else
        "Congratulations #{@player2.name}, you win!"
      end
    end
  end
