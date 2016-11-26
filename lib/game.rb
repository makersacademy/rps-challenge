require_relative "logic"

class Game

attr_reader :player, :computer, :winner

  def initialize(player, computer)
    @player = player
    @computer = computer
    @winner
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  # def winner
  #   return @player if logic.player_wins?
  #   return @computer
  # end

end
