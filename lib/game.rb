require './lib/player'

class Game

  CHOICES = ["Rock", "Paper", "Scissors"]

attr_reader :player, :computer_choice

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def computer_move
    @computer_choice = CHOICES.sample
  end

  def draw?
    @computer_choice == @game.player.choice
  end

  def win?
    case @game.player.choice
    when "Rock"
      @computer_choice = "Scissors" ? true : false
    when "Paper"
      @computer_choice = "Rock" ? true : false
    when "Scissors"
      @computer_choice = "Paper" ? true : false
    end
  end

end
