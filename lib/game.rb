class Game
  attr_reader :player_a, :player_b

  WEAPONS = [:rock, :paper, :scissors]
  RULES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def self.create(player_a, player_b)
    @game = Game.new(player_a, player_b)
  end

  def self.instance
    @game
  end
  
  def initialize(player_a, player_b)
    @player_a = player_a
    @player_b = player_b
  end

  def result
    player_a.choose_weapon
    player_b.choose_weapon
    # win or lose means player_a's win or lose
    return :win if player_b.weapon == RULES[player_a.weapon]
    return :draw if player_b.weapon == player_a.weapon
    :lose
  end
end
