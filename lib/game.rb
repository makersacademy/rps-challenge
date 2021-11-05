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
  end

  def player1
    @players[0]
  end 

  def player2
    @players[1]
  end 

  def calculate_winner(player1choice, player2choice)
    case player1choice
      when "Rock"
        if player2choice == "Rock"
          @outcome = "It's a draw!"
        elsif player2choice == "Paper"
          @outcome = "#{player2.name} wins!"
        elsif player2choice == "Scissors"
          @outcome = "#{player1.name} wins!"
        end
      when "Paper"
        if player2choice == "Rock"
          @outcome = "#{player1.name} wins!"
        elsif player2choice == "Paper"
          @outcome = "It's a draw!"
        elsif player2choice == "Scissors"
          @outcome = "#{player2.name} wins!"
        end
      when "Scissors"
        if player2choice == "Rock"
          @outcome = "#{player2.name} wins!"
        elsif player2choice == "Paper"
          @outcome = "#{player1.name} wins!"
        elsif player2choice == "Scissors"
          @outcome = "It's a draw!"
        end
    end
  end
end
