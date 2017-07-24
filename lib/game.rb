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
    elsif human_choice == 'ROCK' && computer_choice == 'SCISSORS' ||
       human_choice == 'RAPER' && computer_choice == 'ROCK' ||
       human_choice == 'SCISSORS' && computer_choice == 'PAPER'
       'YOU WON!'
    else
      "COMPUTER BEAT YOU!"
    end
  end

end
