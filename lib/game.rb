# below uses a class instance variable
# to later avoid a global variable

require './lib/computer'
require './lib/judge'

class Game
  attr_reader :player_1, :player_choice, :computer_choice

  def initialize(player_1, computer)
    @player_1 = player_1
    @computer = computer.new
    @player_choice = nil
    @computer_choice = nil
  end

  def self.create(player_1, computer = Computer)
    @game = Game.new(player_1, computer)
  end

  def self.instance
    @game
  end

  def player_turn(choice)
    print_message
    @player_choice = choice
  end

  def print_message
    "Enter Rock, Paper or Scissors"
  end

  def computer_turn
    @computer_choice = @computer.choose
  end

  def outcome
    judge = Judge.new(@player_choice, @computer_choice)
    judge.winner
  end
end
