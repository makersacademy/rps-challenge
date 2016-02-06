# Game class
class Game
  WEAPONS = [:rock, :paper, :scissors]
  WIN = [
    [:rock, :scissors],
    [:paper, :rock],
    [:scissors, :paper]
  ]

  attr_reader :p1_weapon, :p2_weapon

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def round_result
    @p1_weapon = player_1.weapon
    @p2_weapon = player_2.weapon
    return :draw if @p1_weapon == @p2_weapon
    return :win if WIN.include?([@p1_weapon, @p2_weapon])
    :lose
  end
end
