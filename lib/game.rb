class Game

  attr_reader :player, :computer

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
    @winner = nil
  end

  def winner(player_weapon, comp_weapon)
    @winner = check_winner(player_weapon, comp_weapon)
  end

  private

  def check_winner(player_weapon, comp_weapon)
    if RULES[player_weapon] == comp_weapon
      player.name
    elsif RULES[comp_weapon] == player_weapon
      computer.name
    else
      :draw
    end
  end

end
