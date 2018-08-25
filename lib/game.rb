class Game
  DEFAULT_OPPONENT = 'Rocky McRock Face'
  attr_reader :player1, :player2

  def initialize(player1, player2 = DEFAULT_OPPONENT)
    @player1 = player1
    @player2 = player2
  end

  # def attack
  #   @current_player.receive_damage
  # end

  # def first_mover
  #   rand(0..1) == 1 ? @current_player = @player1 : @current_player = $p2.name
  # end

end
