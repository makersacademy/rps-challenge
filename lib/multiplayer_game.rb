require_relative 'game'

class MultiplayerGame < Game
  attr_accessor :player1_name, :player2_name

  def self.instance
    @game
  end
  
  def self.create(player1_name, player2_name)
    @game = Game.new(player1name: player1_name, player2_name: player2_name)
  end

  def initialize(player1_name: player1_name, player2_name: player2_name)
    @player1_name = player1_name
    @player2_name = player2_name
  end
end
