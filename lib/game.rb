require_relative 'game'

class Game

  attr_reader :player_1, :player_2

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def check_win
    return "Only one player has made their selection" if player_1.selection == nil || player_2.selection == nil
    return "Draw!" if player_1.selection == player_2.selection
    case player_1.selection
    when :rock
      rock
    when :paper
      paper
    when :scissors
      scissors
    end
  end

  def winner
    self.check_win
  end

  private

  def rock
    player_2.selection == :paper ? "Computer wins" : "Player 1 wins"
  end

  def paper
    player_2.selection == :scissors ? "Computer wins" : "Player 1 wins"
  end

  def scissors
    player_2.selection == :rock ? "Computer wins" : "Player 1 wins"
  end
end
