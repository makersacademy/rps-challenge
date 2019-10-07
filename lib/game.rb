require_relative 'computer'
class Game

  P1_WINS = 0
  P2_WINS = 1
  DRAW    = 2

  MOVES = %w[rock paper scissors].freeze
  WINS = [
               ['Rock', 'Scissors'],
               ['Paper', 'Rock'],
               ['Scissors', 'Paper']
             ]
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2 = Computer.new)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result(player_1, player_2)
    if WINS.include? [player_1, player_2]
      "#{@player_1.name} loses"
    elsif player_1 == player_2
      "It's a Draw"
    else
      "#{@player_1.name} wins"
    end
  end
end
