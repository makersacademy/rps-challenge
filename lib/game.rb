# below uses a class instance variable
# to later avoid a global variable

require './lib/computer'
require './lib/judge'

class Game
  attr_reader :player_1, :player_choice, :computer_choice

  def initialize(player_1, computer = Computer, _judge = Judge)
    @player_1 = player_1
    @computer = computer.new
    @player_choice = nil
    @computer_choice = nil
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def player_turn
    print_message
    @player_choice = gets.chomp
  end

  def print_message
    p "Enter Rock, Paper or Scissors"
  end

  def computer_turn
    @computer_choice = @computer.choose
  end

  def outcome
    judge = judge.new(@player_choice, @computer_choice)
    judge.winner
  end
end
