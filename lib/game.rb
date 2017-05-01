class Game
  attr_reader :throws, :player_1_wins,
              :player_1_pick, :player_2_pick, :result,
              :player_1, :player_2

  def Game.start(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def Game.this_game
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @throws = [:Rock, :Paper, :Scissors]
    @player_1_wins = [[:Paper, :Rock], [:Scissors, :Paper], [:Rock, :Scissors]]
  end

  def player_1_chooses(player_1_pick)
    @player_1_pick = player_1_pick.to_sym
  end

  def player_2_chooses
    @player_2_pick = @throws.sample
  end

  def evaluate_round
    if @player_1_wins.include? [@player_1_pick, @player_2_pick]
      @result = "#{player_1.name} wins!"
    elsif @player_1_pick == @player_2_pick
      @result = "Round is a draw!"
    else
      @result = "#{player_2.name} wins!"
    end
  end

end
