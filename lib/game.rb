require_relative 'player'
require_relative 'computer'

class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  attr_reader :player_1, :player_2

  def result
    return "It's a draw" if draw?

    return "#{@player_1.name} wins!" if player_1_win?
    
    return "#{@player_2.name} wins!"
  end

  def draw?
    @player_1.choice == @player_2.choice
  end

  def player_1_win?
    'RSPR'.include?(@player_1.choice[0] + @player_2.choice[0])
  end

end
