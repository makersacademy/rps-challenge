class Game

  attr_reader :player_1

  def initialize(player_1_name, player_klass = Player)
    # @player_klass = player_klass
    @player_1 = player_klass.new(player_1_name)
    # @attacker = true
    # @game_over = false
    # @looser = nil
    # @winner = nil
  end
end
