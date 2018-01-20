require_relative 'player'

class Game

  def self.build(player_1,player_2 = ComputerPlayer.new)
    @game = self.new(player_1,player_2)
  end

  def self.instance
    @game
  end

  attr_reader :player, :computer_player

  def initialize(player, computer_player)
    @player = player
    @computer_player = computer_player
  end

end
