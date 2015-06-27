
class Game

  attr_reader :player, :computer

  def initialize (player, computer)
    @player = player.new
    @computer = computer.new
  end

  def draw_weapons(player_selection)
    player.select_weapon(player_selection.to_sym)
    computer.randomize_weapon
  end

  def determine_winner(player,computer)
    if player.selected_weapon == computer.random_weapon
      "Draw!"
    elsif (player.selected_weapon == :rock && computer.random_weapon == :scissors) ||
          (player.selected_weapon == :paper && computer.random_weapon == :rock) ||
          (player.selected_weapon == :scissors && computer.random_weapon == :paper)
      "#{player} wins!"
    else
      "Computer wins!"
    end
  end
end
