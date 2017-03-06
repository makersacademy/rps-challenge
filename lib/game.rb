require_relative 'player'

class Game

  attr_reader :player1, :player2, :winner

  def initialize(player1, player2)
    @player1, @player2 = player1, player2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def play(weapon1, weapon2)
    case [weapon1, weapon2]
    when ['Rock', 'Rock'], ['Paper', 'Paper'], ['Scissors', 'Scissors']
      draw
    when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
      assign_winner(@player1)
    when ['Rock', 'Paper'], ['Scissors', 'Rock'], ['Paper', 'Scissors']
      assign_winner(@player2)
    end
  end

  def draw
    @winner = nil
  end

  def assign_winner(player)
    player.adjust_score(5)
    @winner = player
  end

end
