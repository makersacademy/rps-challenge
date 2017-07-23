class Game

  attr_reader :player_1, :player_2

#return 0 for draw, 1 for player_1, 2 for player_2
  def return_winner(player_1, player_2)
    player_2.get_weapon
    p compare_weapons(player_1.get_weapon,player_2.get_weapon)
  end

  private
  def compare_weapons(weapon_1, weapon_2)
    if weapon_1 == weapon_2
      result = 0
    elsif weapon_1 == "Rock" && weapon_2 == "Scissors" ||
          weapon_1 == "Paper" && weapon_2 == "Rock" ||
          weapon_1 == "Scissors" && weapon_2 == "Paper"
      result = 1
    else
      result = 2
    end
  end
end
