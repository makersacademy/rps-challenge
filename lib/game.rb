require_relative 'player'
require_relative 'result'
require_relative 'computer'

class Game

  attr_reader :player, :choices, :computer, :result

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
    @choices = []
    @computer = Computer.new
    @result = Result.new
  end

  def choice
    users_choice = player.users_choice
    computer_choice = computer_selection
    choices.push([users_choice, computer_choice])
  end

  def user_computer_choices
    result.responses(choices.last)
  end

  private

  attr_writer :choices

  def computer_selection
    computer.choice
  end

end
