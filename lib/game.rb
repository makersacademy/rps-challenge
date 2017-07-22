class Game

  attr_reader :winner, :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def judge(player_1_pick, player_2_pick)
    if player_1_pick == 'rock'
      @winner = ( player_2_pick == 'paper' ? @player_2 : @player_1)
    elsif player_1_pick == 'paper'
      @winner = ( player_2_pick == 'scissors' ? @player_2 : @player_1)
    elsif player_1_pick == 'scissors'
      @winner = ( player_2_pick == 'rock' ? @player_2 : @player_1)
    end
  end
end
