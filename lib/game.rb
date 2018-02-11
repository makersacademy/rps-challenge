class Game

  def self.create(player_1, *args)
    @game = Game.new(player_1, *args)
  end

  def self.instance
    @game
  end

  attr_reader :cpu, :player_one, :player_two

  def initialize(player_1, player_2 = nil)
    @player_one = Player.new(player_1)
    player_2 ? two_player_game(player_2) : one_player_game
  end

  def result
    @player_two ? two_player_result : one_player_result
  end

  private

  def one_player_game
    @cpu_choice = [:rock, :paper, :scissors, :Spock, :lizard].sample.to_s
    @cpu = Player.new({ name: "CPU", rps: @cpu_choice })
    @choices = (@player_one.choice[0] + cpu.choice[0]).to_sym
  end

  def one_player_result
    return "It's a draw" if @cpu_choice == @p1_choice
    [:pr, :rs, :sp, :rl, :lS, :Ss, :sl, :lp, :pS, :Sr]
    .include?(@choices) ? :win : :lose
  end

  def two_player_game(player)
    @player_two = Player.new(player)
    @choices = (@player_one.choice[0] + @player_two.choice[0]).to_sym
  end

  def two_player_result
    return "It's a draw" if @player_one.choice == @player_two.choice
    [:pr, :rs, :sp, :rl, :lS, :Ss, :sl, :lp, :pS, :Sr]
    .include?(@choices) ? :p1win : :p2win
  end

end
