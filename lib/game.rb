#SHOULD THIS BE IN ITS OWN CLASS?

class Game

  private # Do we need to put this above each method that is esteemed private?
          # A: No, anything beneath will be private.

  def user_play(choice) # choice is either "rock", "paper", or "scissors"
    @user_play = choice
  end
  def initialize(player1, player2, game = RPS.new)
    @players = player1, player2
    @game = game
  end

  def play
    @play = game.move
  end

  def result
    #  if player move is the same as other player move then draw
    #  if player move is winning against other player move then player.name won
    #  if player move is lost against other player then other_player.name won
    if player1
    end

  end
end

module RPS

  module Rock

    extend self

    def scissors
      'win'
    end

    def rock
      'draw'
    end

    def paper
      'lose'
    end

  end

  module Scissors
    extend self

    def scissors
      'draw'
    end

    def rock
      'lose'
    end

    def paper
      'win'
    end

  end

  module Paper
    extend self

    def scissors
      'lose'
    end

    def rock
      'win'
    end

    def paper
      'draw'
    end

  end

end

include RPS
