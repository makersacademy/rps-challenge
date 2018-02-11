class Game
  def self.create(player_1, *args)
    @game = Game.new(player_1, *args)
  end

  def self.instance
    @game
  end

  attr_reader :p1_rps, :p2_rps, :cpu_choice, :player_one, :player_two

  def initialize(player_1, player_2 = nil)
    p player_2
    @player_one, @p1_rps = player_1[:name], player_1[:rps]
    if player_2 != nil
      @player_two, @p2_rps = player_2[:name], player_2[:rps]
      @choices = [@p1_rps[0], @p2_rps[0]]
    else
      @cpu_choice = [:rock, :paper, :scissors].sample.to_s
      @choices = [p1_rps[0], cpu_choice[0]]
    end
  end

  def winner
    if @player_two != nil
      return "It's a draw" if @p1_rps == @p2_rps
      ["pr", "rs", "sp"].include?(@choices) ? "Sorry #{@player_two}, #{@player_one} wins!" : "Sorry #{@player_one}, #{@player_two} wins!" 
    else
      return "It's a draw" if @cpu_choice == @rps
      ["pr", "rs", "sp"].include?(@choices) ? "You win" : "You lose"
    end
  end
end
