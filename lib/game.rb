require_relative 'player'

class Game
  attr_accessor :player_1, :player_2, :player_1_choice, :player_2_choice

  def initialize
    @player_1 = Player.new
    @player_2 = Player.new

    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def winner?
    if (@player_1.won? == true)
      return 'Player 1 won!'
    elsif (@player_2.won? == true)
      return 'Player 2 won!'
    else
      return 'Ther\'es no winner yet!'
    end
  end
end
