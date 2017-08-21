require_relative './computer'

class Players
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1, player2)
    @players = Players.new(player1, player2)
  end

  def self.instance
    @players
  end
end

# test=Player.new("John","Kate")
