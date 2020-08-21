class Game

  def initialize(player,opponent)
    @player = player
    @opponent = opponent
  end

  attr_reader :player_choice, :comp_choice

  def draw?
    @player.choice == @opponent.choice
  end

  def win?
    'RSPR'.include?(@player.choice[0]+@opponent.choice[0])
  end

end
