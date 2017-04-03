class Game

  attr_reader :player_1, :player_2
  # HANDS = ['Rock', 'Paper', 'Scissors']

  RULES = {rock: :scissors, scissors: :paper, paper: :rock}

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def draw?
    player_1.hand == player_2.hand
  end

  def result
    RULES[player_1.hand] == player_2.hand ? player_1.name : player_2.name
  end


end
