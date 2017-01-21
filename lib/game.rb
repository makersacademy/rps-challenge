class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :players, :opponent, :player, :choices

  def initialize(player)
    @player = player
    @opponent = Player.new
    @players = [@player, @opponent]
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def result
    "It's a tie!" if player.choice == opponent.choice
  end

end
