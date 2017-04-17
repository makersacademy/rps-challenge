require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def check_winner(player_1_selection, player_2_selection)
    return "Both players must make a selection" if (player_1_selection == nil || player_2_selection == nil)
    return "DRAW" if (player_1_selection == player_2_selection)
    case player_1
    when :paper
      player_2_selection == :scissors ? "player_2" : "player_1"
    when :scissors
      player_2_selection == :rock ? "player_2" : "player_1"
    when :rock
      player_2_selection == :paper ? "player_2" : "player_1"
    end
  end

  def computer_choice
      ["rock", "paper", "scissors"].sample
  end

  private

  def rock
    player_2.pick == :paper ? "Computer wins" : "Player 1 wins"
  end

  def paper
    player_2.pick == :scissors ? "Computer wins" : "Player 1 wins"
  end

  def scissors
    player_2.pick == :rock ? "Computer wins" : "Player 1 wins"
  end

end
