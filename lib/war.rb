class War

  def initialize
    @weapon_values = {
      :rock => 1,
      :paper => 2,
      :scissors => 3,
      :spock => 4,
      :lizard => 5
      }
  end

  def weapon_to_number(weapon)
    @weapon_values[weapon]
  end

  def weapons_available(number)
    @weapons_available = number
  end

  def difference(player_1, player_2)
    weapon_to_number(player_1) - weapon_to_number(player_2)
  end

  def decide_winner(player_1, player_2)
    difference(player_1, player_2) == 0 ? :draw : non_draw(player_1, player_2)
  end

  def non_draw(player_1, player_2)
    weapon_modulo(player_1, player_2) % 2 == 0 ? :player_2_win : :player_1_win
  end

  def weapon_modulo(player_1, player_2)
    difference(player_1, player_2) % @weapons_available
  end
end





=begin

The majority of such proposed generalizations are isomorphic to a simple game of
modulo arithmetic, where half the differences are wins for player one. For
instance, rock-paper-scissors-Spock-lizard (note the different order of the last
two moves) may be modeled as a game in which each player picks a number from one
to five. Subtract the number chosen by player two from the number chosen by
player one, and then take the remainder modulo 5 of the result. Player one is
the victor if the difference is one or three, and player two is the victor if
the difference is two or four. If the difference is zero, the game is a tie.

=end
