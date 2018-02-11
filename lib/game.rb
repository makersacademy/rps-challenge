class Game
  def self.create(player_1, player_2 = nil)
    @game = Game.new(player_1, player_2 = nil)
  end

  def self.instance
    @game
  end

  attr_reader :p1_rps, :cpu_choice, :player_one

  def initialize(player_1, player_2 = nil)
    @player_one = player_1[:name]
    @p1_rps = player_1[:rps]
    @cpu_choice = [:rock, :paper, :scissors].sample.to_s
    @choices = [p1_rps[0], cpu_choice[0]]
  end

  def winner
    return "It's a draw" if @cpu_choice == @rps
    # short_choices = @choices[0][0] + @choices[1][0]
    ["pr", "rs", "sp"].include?(@choices) ? "You win" : "You lose"
  end
end
