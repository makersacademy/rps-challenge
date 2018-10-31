require_relative 'computer'

class Game

  OUTCOMES = [
               ['Rock', 'Paper'],
               ['Paper', 'Scissors'],
               ['Scissors', 'Rock']
             ]

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2 = Computer.new)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result
    return @player_2 if OUTCOMES.include?([@player_1.choice, @player_2.choice])
    return @player_1 if OUTCOMES.include?([@player_2.choice, @player_1.choice])
    return :tie
  end

end
