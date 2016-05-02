require_relative 'player'
require_relative 'computer'

class Game

  MOVES = ['rock','spock','paper','lizard','scissors']

  attr_reader :choices, :winner, :computer, :player

  def initialize(computer = Computer.new, player = Player.new)
    @computer = computer
    @player = player
    @choices = []
  end

  def add_selection(computer, player)
    @choices[0] = computer
    @choices[1] = player
  end

  def winner
    if self.winner_calc == 0
      "tie"
    elsif self.winner_calc == 1 || self.winner_calc == 2
      @computer
    else
      @player
    end
  end

  def self.start(computer, player)
    @game = Game.new(computer, player)
  end

  def self.instance
    @game
  end

  # private
  #
  # attr_reader :winner_value



  def winner_calc
    array = []
    @choices.each {|val| array << MOVES.find_index(val).to_i + 1}
    (array.first - array.last) % 5
  end

end
