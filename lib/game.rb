class Game

  WEAPONS = [:rock, :paper, :scissors]
  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def victor
    return :draw if both_chose_same?
    did_p1_win? ? :p1 : :p2
  end

  private

  def both_chose_same?
    player_1.weapon_choice == player_2.weapon_choice
  end

  def did_p1_win?
    RULES[player_1.weapon_choice] == player_2.weapon_choice
  end
end
