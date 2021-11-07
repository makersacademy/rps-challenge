require './lib/player'
require './lib/computer'

class Game
  attr_reader :players, :result
  CHOICES = ['Rock', 'Paper', 'Scissors']

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @players = [player, computer]
    @result = ""
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end

  def play(p_choice)
    player.player_choice(p_choice)
    computer.random_choice
  end

  def result
    if (player.choice == computer.choice)
      @result = "It is a draw!"
    elsif (player.choice == 'Rock' && computer.choice == 'Scissors') ||
      (player.choice == 'Scissors' && computer.choice == 'Paper') ||
      (player.choice == 'Paper' && computer.choice == 'Rock')
      @result = "You WON!"
    else
      @result = "You LOST!"
    end
  end
end