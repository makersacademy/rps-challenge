
class Game

  attr_reader :player_1, :player_2

  def initialize (player1, player2)
    @player_1 = player1.new
    @player_2 = player2.new

    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def draw_with_computer(player_selection)
    player_1.select_weapon(player_selection.to_sym)
    player_2.randomize_weapon
  end

  def determine_winner(player1,player2)
    if player1.selected_weapon == player2.selected_weapon
      "Draw!"
    elsif (player1.selected_weapon == :rock && player2.selected_weapon == :scissors) ||
          (player1.selected_weapon == :paper && player2.selected_weapon == :rock) ||
          (player1.selected_weapon == :scissors && player2.selected_weapon == :paper)
      "You win!"
    else
      "Opponent wins!"
    end
  end
end
