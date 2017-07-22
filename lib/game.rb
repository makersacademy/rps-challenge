class Game

  attr_reader :winner, :player_1, :player_2, :scorer

  def initialize(player_1, player_2, scorer = Scorer.new)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
    @scorer = scorer
  end

  def judge(player_1_pick, player_2_pick)
    outcomes = { ['rock', 'rock'] => nil,
                ['rock', 'paper'] => @player_2,
                ['rock', 'scissors'] => @player_1,
                ['paper', 'rock'] => @player_1,
                ['paper', 'paper'] => nil,
                ['paper', 'scissors'] => @player_2,
                ['scissors', 'rock'] => @player_2,
                ['scissors', 'paper'] => @player_1,
                ['scissors', 'scissors'] => nil }
    @winner = outcomes[ [player_1_pick, player_2_pick] ]
    increase_score
  end

private

  def increase_score
    if @winner == @player_1
      @scorer.player_1_win
    elsif @winner == @player_2
      @scorer.player_2_win
    end
  end
end
