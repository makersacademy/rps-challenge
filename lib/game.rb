class Game
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  attr_accessor :player_1, :player_2

  @@instance = Game.new

  def self.instance
    @@instance
  end

  def result
    return :win if RULES[player_1.move] == player_2.move
    return :lose if RULES[player_2.move] == player_1.move
    :draw
  end

  private_class_method :new
end
