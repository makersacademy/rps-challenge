class Game

  attr_reader :winner, :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def judge(player_1_pick, player_2_pick)
    winhash = { ['rock', 'rock'] => nil,
                ['rock', 'paper'] => @player_2,
                ['rock', 'scissors'] => @player_1,
                ['paper', 'rock'] => @player_1,
                ['paper', 'paper'] => nil,
                ['paper', 'scissors'] => @player_2,
                ['scissors', 'rock'] => @player_2,
                ['scissors', 'paper'] => @player_1,
                ['scissors', 'scissors'] => nil }
    @winner = winhash[ [player_1_pick, player_2_pick] ]
  end
end
