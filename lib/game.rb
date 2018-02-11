class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player, :current_player

  def initialize(player)
    @player = Player.new(player)
    @current_player = @player
  end
end

#   def make_move
#   @current_player.receive_point
#   switch_turns
#   end
#
#   def current_turn?
#     current_player == player1
#   end
#
#   def switch_turns
#     @current_player = current_turn? ? player2 : player1
#   end
# end
