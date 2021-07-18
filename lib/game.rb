

class Game

  attr_reader :computer_choices, :player

  def initialize(player)
    @player = player
    @computer_choices = ["Rock", "Paper", "Scissors"]
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def computer_choice
    @computer_choices.sample
  end

end