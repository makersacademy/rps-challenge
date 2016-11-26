require_relative 'player'
require_relative 'rps'
require_relative 'computer'

class Game

  attr_reader :player, :choices

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @choices = []
    @computer = computer
  end

  def choice
    users_choice = @player.users_choice
    computer_choice = @computer.choice_made
    @choices.push(users_choice, computer_choice)
  end


end
