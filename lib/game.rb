require_relative 'computer'

class Game
  attr_reader :player_1, :player_2, :create, :result, :p2_weapon

  WEAPON = [:rock, :paper, :scissors]
  WINNING_PAIRS = [[:rock, :scissors], [:paper, :rock], [:scissors, :paper]]

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
    @p2_weapon = p2_weapon
    weapons = [p1_weapon.to_sym, p2_weapon]
    return draw if p1_weapon.to_sym == p2_weapon
    return win if WINNING_PAIRS.include?(weapons) else lose
  end

  def draw
    @result = "it's a DRAW"
  end

  def win
    @result = "it's a WIN"
  end

  def lose
    @result = "you LOST"
  end
end
