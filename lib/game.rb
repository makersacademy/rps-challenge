require_relative 'computer'

class Game
  attr_reader :create, :player_1, :player_2, :result

  WEAPON = [:rock, :paper, :scissors]
  WINNING_COMBO = [[:rock, :scissors], [:paper, :rock], [:scissors, :paper]]
  #constant with symbols

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @result = "Players haven't selected yet"
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def play(p1_weapon, p2_weapon = Computer.new.move)
    weapons = [p1_weapon.to_sym, p2_weapon]
    return tie if p1_weapon.to_sym == p2_weapon
    return win if WINNING_COMBO.include?(weapons) else lose
  end

  def tie
    @result = "Nobody, it's a tie!"
  end

  def win
    @result = "You, yippee!"
  end

  def lose
    @result = "Machine. Your tiny brain is no match."
  end
end
