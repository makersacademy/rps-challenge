class Game

  RULES = { rock: :scissor,
            paper: :rock,
            scissor: :paper }

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, rules = RULES)
    @player_1 = player_1
    @player_2 = player_2
    @rules = rules
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result(player_1_weapon, player_2_weapon)
    if @rules[player_1_weapon] == player_2_weapon
      :player_1_win
    elsif @rules[player_2_weapon] == player_1_weapon
      :player_2_win
    else
      :draw
    end
  end

end
