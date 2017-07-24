require_relative 'player'

class Game
  OPTIONS = ['ROCK', 'PAPER', 'SCISSORS']
  attr_reader :player, :winner

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def computer_selection
    OPTIONS.sample
  end

  def play(human_choice, computer_choice)
    @winner = result(human_choice, computer_choice)
  end

  def result(human_choice, computer_choice)
    if human_choice == computer_choice
      "DRAW"
    else
      "You or Computer"
    end
  end

end
