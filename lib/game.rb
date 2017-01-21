class Game

  attr_reader :player, :opponent

  CHOICES = %w(rock paper scissors)

  def self.create(player, ai_class=AI)
    @game ||= @game = Game.new(player, ai_class.new)
  end

  def self.instance
    @game
  end

  def initialize(player, opponent)
    @player = {player: player, name: player.name, choice: player.choice}
    @opponent = {opponent: opponent, name: opponent.name, choice: opponent.choice}
  end

end
