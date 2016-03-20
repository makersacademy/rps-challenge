require_relative 'player'
require_relative 'computer'
class Game
  @game = nil

  def self.save(game)
    @game = game
  end

  def self.load
    @game
  end

  WEAPONS = {
    rock: 0,
    paper: 1,
    scissors: 2,
    spock: 3,
    lizard: 4
  }
  attr_reader :player1,:player2
  def initialize(player1, player2=Computer.new)
    @player1 = player1
    @player2 = player2
  end

  def winner
    return 'Tie' if result == 1
    result ? @player1 : @player2
  end
  private
  
  def result
    number = WEAPONS[@player1.choice] - WEAPONS[@player2.choice]
    number = number % 5
    return 1 if number == 0
    number == 1 || number == 3
  end

end
