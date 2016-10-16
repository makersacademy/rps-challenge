class Game

  attr_reader :player_1, :player_2

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

  def result
    return "draw" if @player_1.weapon == @player_2.weapon
    winning_moves = { rock: :scissors, paper: :rock, scissors: :paper }
    @player_2.weapon == winning_moves[@player_1.weapon] ? "you win" : "you lose - prepare to die"
  end
end
