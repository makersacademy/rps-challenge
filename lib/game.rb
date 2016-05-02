require_relative 'player'
require_relative 'computer'

class Game

  MOVES = ['scissors', 'paper', 'rock', 'lizard', 'spock', 'wizard', 'batman', 'spiderman', 'glock']

  attr_reader :choices, :winner, :computer, :player

  def initialize(computer = Computer.new, player = Player.new)
    @computer = computer
    @player = player
    @choices = []
  end

  def add_selection(computer, player)
    @choices.clear
    @choices[0] = computer
    @choices[1] = player
  end

  def self.start(computer, player)
    @game = Game.new(computer, player)
  end

  def self.instance
    @game
  end

  def winner_calc
    array = []
    @choices.each {|val| array << MOVES.find_index(val).to_i}
    @winner_value = ((array.first - array.last) % 9).to_i
  end

  def winner
    self.winner_calc
    if @winner_value == 0
      @winner = "tie"
    elsif @winner_value.even? && @winner_value != 0
      @winner = @computer
    else
      @winner = @player
    end
  end

end
