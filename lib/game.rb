class Game
  attr_reader :player_1, :player_2
  def initialize(first_player, second_player = Player.new)
    @player_1 = first_player
    @player_2 = second_player
  end
end