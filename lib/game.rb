require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(playerClass)
    @player1 = create_player(playerClass)
    @player2 = create_player(playerClass)
  end

  def create_player(playerClass)
    player = playerClass.new
  end

  def decider
    case
    when (self.player1.choice == "rock" and self.player2.choice == "rock")
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! It's a tie!"
    when (self.player1.choice == 'rock' and self.player2.choice == 'scissors')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! Player 1 wins!"
    when (self.player1.choice == 'rock' and self.player2.choice == 'paper')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! Player 2 wins!"
    when (self.player1.choice == 'paper' and self.player2.choice == 'rock')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! Player 1 wins!"
    when (self.player1.choice == 'paper' and self.player2.choice == 'scissors')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! Player 2 wins!"
    when (self.player1.choice == 'paper' and self.player2.choice == 'paper')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! It's a tie!"
    when (self.player1.choice == 'scissors' and self.player2.choice == 'rock')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! Player 2 wins!"
    when (self.player1.choice == 'scissors' and self.player2.choice == 'paper')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! Player 1 wins!"
    when (self.player1.choice == 'scissors' and self.player2.choice == 'scissors')
      "Player 1 chose #{self.player1.choice} while player 2 chose #{self.player2.choice}! It's a tie!"
    else
      "WHAT DID YOU DO TO CAUSE THIS?!"
    end
  end
end