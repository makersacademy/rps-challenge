class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game ||= Game.new
  end

  def return_winner
    w1 = @player_1.weapon
    @player_2.generate_weapon
    w2 = @player_2.weapon
    compare_weapons(w1, w2)
  end

  private
  def compare_weapons(weapon_1, weapon_2)
    if weapon_1 == weapon_2
      return "Draw"
    elsif weapon_1 == "Rock" && weapon_2 == "Scissors" ||
          weapon_1 == "Paper" && weapon_2 == "Rock" ||
          weapon_1 == "Scissors" && weapon_2 == "Paper"
      return "You win!"
    else
      return "You lose!"
    end
  end
end
