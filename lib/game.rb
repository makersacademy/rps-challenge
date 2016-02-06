# Game class
class Game
  WEAPONS = [:rock, :paper, :scissors]
  WIN = [
    [:rock, :scissors],
    [:paper, :rock],
    [:scissors, :paper]
  ]

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def round_winner(p1, p2)
    return 'draw' if p1.weapon == p2.weapon
    return p1 if WIN.include?([p1.weapon, p2.weapon])
    p2
  end
end
