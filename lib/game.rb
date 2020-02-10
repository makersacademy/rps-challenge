class Game

  WEAPONS = [:rock, :paper, :scissors]
  RESULTS = { :scissors => :paper, :rock => :scissors, :paper => :rock }

  attr_reader :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def compute_result
    return "No one, it's a draw!" if @player_1.weapon == @player_2.weapon
    return @player_1 if RESULTS[@player_1.weapon] == @player_2.weapon
    return @player_2 if RESULTS[@player_2.weapon] == @player_1.weapon
  end

end
