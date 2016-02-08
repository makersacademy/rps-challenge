# Game class
class Game
  WEAPONS = [:rock, :paper, :scissors]
  WIN = [
    [:rock, :scissors],
    [:paper, :rock],
    [:scissors, :paper]
  ]

  attr_reader :p1_weapon, :p2_weapon, :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def set_turn
    if player_1s_turn? && multiplayer
      set_to_player_2s_turn
    else
      reset_to_player_1s_turn
    end
  end

  def stage
    return '/play' if player_1s_turn? && multiplayer
    '/endround'
  end

  def round_result
    @p1_weapon = player_1.weapon
    @p2_weapon = player_2.weapon
    return :draw if @p1_weapon == @p2_weapon
    return :win if WIN.include?([@p1_weapon, @p2_weapon])
    :lose
  end

  private

  def player_1s_turn?
    @turn == player_1
  end

  def multiplayer
    player_2.is_a?(Player)
  end

  def set_to_player_2s_turn
    @turn = player_2
  end

  def reset_to_player_1s_turn
    @turn = player_1
  end
end
