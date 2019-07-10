class Game

  attr_reader :current_turn, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @opponent = player_2
  end

  def attack(player)
    player.receive_damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    holding = @current_turn
    @current_turn = opponent_of(current_turn)
    @opponent = holding
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

  def finished?
    @current_turn.hp == 0 || @opponent.hp == 0
  end

end
