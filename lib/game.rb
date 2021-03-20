require './lib/player'

class Game 

  def self.new_game(player1_name, player2_name, weapons)
    @game = Game.new(player1_name, player2_name, weapons)
  end

  def self.current_game
    @game
  end

  attr_reader :player1, :player2

  def initialize(player1_name, player2_name = "computer", weapons = 3)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @weapons = weapons
  end

  def match(player1move, player2move)
    if player1move == player2move 
      return true
    end

    if player2move.odd? && player1move.odd? || player1move.even? && player2move.even?
      [player1move, player2move].min
    else
      [player1move, player2move].max
    end
  end
end
