require_relative 'game'

class Game

  attr_reader :player_1, :player_2

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def check_win
    return "Only one player has made their selection" if (player_1.selection == nil || player_2.selection == nil)
    return "Draw!" if (player_1.selection == player_2.selection)
    case player_1.selection
    when :rock
      player_2.selection == :paper ? player_2 : player_1
    when :paper
      player_2.selection == :scissors ? player_2 : player_1
    when :scissors
      player_2.selection == :rock ? player_2 : player_1
    end
  end

end
