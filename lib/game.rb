class Game
  attr_reader :throws, :player1_wins,
              :player1_pick, :player2_pick, :result,
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
    @player1_wins = [[:Paper, :Rock], [:Scissors, :Paper], [:Rock, :Scissors]]
  end

  def player1_chooses(player1_pick)
    @player1_pick = player1_pick.to_sym
  end

  def player2_chooses
    @player2_pick = @throws.sample
  end

  def evaluate_round
    if @player1_wins.include? [@player1_pick, @player2_pick]
      @result = "Player One wins!"
    elsif @player1_pick == @player2_pick
      @result = "Round is a draw!"
    else
      @result = "Player Two wins!"
    end
  end

end
