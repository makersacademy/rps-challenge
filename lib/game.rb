class Game

  attr_reader :player_1, :player_2, :p1_rps, :p2_rps

  def initialize(player_1, player_2)
    @player_one = player_1[:name]
    @player_two = player_2[:name]
    @p1_rps = player_1[:rps]
    @p2_rps = player_2[:rps]
    @choices = [@p1_rps[0], @p2_rps[0]]
  end

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def two_player_game
    @choices = (@player_one.choice[0] + @player_two.choice[0]).to_sym
  end

  def winner
    return "It's a draw" if @p1_rps == @p2_rps
    ["pr", "rs", "sp"].include?(@choices) ? "#{@player_one} wins!" : "#{@player_two} wins!"
  end

end