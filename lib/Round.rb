require './lib/player'

class Round

  attr_reader :player1, :player2, :players

  def self.create(player, computer = Player.new )
    @round = Round.new(player, computer)
  end

  def self.instance
    @round
  end

  private

  def initialize(player, computer = Player.new)
    @players = [@player1 = player, @player2 = computer]
  end

end
