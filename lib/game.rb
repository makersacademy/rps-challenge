class Game

  CHOICES = ["Rock", "Paper", "Scissors"]

attr_reader :player, :computer_choice

  def initialize(player)
    @player = player
    @computer_choice = CHOICES.select
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
