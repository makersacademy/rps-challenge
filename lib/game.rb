class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @weapons = ["rock", "paper", "scissors"]
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def computer_weapon
    player_2.play_weapon(weapons.sample)
  end

  private
  attr_reader :players, :weapons
end
