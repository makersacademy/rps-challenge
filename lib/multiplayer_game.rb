require_relative 'game'

class MultiplayerGame < Game
  attr_accessor :player1_name, :player2_name

  def self.instance
    @game
  end
  
  def self.create(player1_name, player2_name=nil)
    @game = self.new(player1_name: player1_name, player2_name: player2_name)
  end

  def initialize(player1_name: player1_name, player2_name: player2_name)
    @player1_name = player1_name
    @player2_name = player2_name
  end

  def add_second(name)
    @player2_name = name
  end

  def ready?
    return true if @player1_name && @player2_name

    false
  end
end
