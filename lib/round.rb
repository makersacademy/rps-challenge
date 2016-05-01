class Round
  WEAPONS = [:rock, :paper, :scissors]

  WINNERS = [{:scissors => :paper},
            {:paper => :rock},
            {:rock => :scissors}]

  attr_reader :player_1, :player_1_weapon, :player_2_weapon

  def self.create(player_1)
    @round = Round.new(player_1)
  end

  def self.instance
    @round
  end

  def initialize(player_1)
    @player_1 = player_1
    @player_1_weapon = player_1.weapon_choice.downcase
  end

  def random_opponent
    @player_2_weapon = WEAPONS.sample
  end

  def win
    WINNERS.include?(player_1_weapon => player_2_weapon)
  end

  def draw
    player_1_weapon == player_2_weapon
  end

  def result
    return player_1.name if win
    return "No-one" if draw
    "Computer"
  end

end
