class Game
  def self.create(player_1, *args)
    @game = Game.new(player_1, *args)
  end

  def self.instance
    @game
  end

  attr_reader :p1_choice, :p2_choice, :cpu_choice, :player_one, :player_two

  def initialize(player_1, player_2 = nil)
    p player_2
    @player_one, @p1_choice = player_1[:name], player_1[:rps]
    if player_2 != nil
      @player_two, @p2_choice = player_2[:name], player_2[:rps]
      @choices = (p1_choice[0] + p2_choice[0]).to_sym
    else
      @cpu_choice = [:rock, :paper, :scissors].sample.to_s
      @choices = (p1_choice[0] + cpu_choice[0]).to_sym
    end
  end

  def winner
    if @player_two != nil
      return "It's a draw" if @p1_choice == @p2_choice
      p @choices
      [:pr, :rs, :sp, :rl, :lS, :Ss, :sl, :lp, :pS, :Sr].include?(@choices) ? "Sorry #{@player_two}, #{@player_one} wins!" : "Sorry #{@player_one}, #{@player_two} wins!"
    else
      return "It's a draw" if @cpu_choice == @p1_choice
      [:pr, :rs, :sp, :rl, :lS, :Ss, :sl, :lp, :pS, :Sr].include?(@choices) ? "You win" : "You lose"
    end
  end
end
