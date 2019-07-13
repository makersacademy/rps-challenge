class Game
  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private

    def opponent_of(the_player)
      @players.select { |player| player != the_player }.first
    end
    
end
