require_relative 'player'
class Game

attr_reader :player_1, :player_2


def initialize(player1 = Player.new, player2 = Player.new)
  @player_1 = player1
  @player_2 = player2
end


end
