class MultiGame

  RULES = { rock: [:scissors, :lizard],
            paper: [:spock, :rock],
            scissors: [:paper, :lizard],
            spock: [:scissors, :rock],
            lizard: [:spock, :paper] }

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    return :draw if draw?
    win? ? :wins :(:loses)
  end

  private

  def draw?
    @player_1.player_weapon == @player_2.player_weapon
  end

  def win?
    RULES[@player_1.player_weapon].include?(@player_2.player_weapon)
  end

end
