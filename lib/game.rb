class Game
  WINNERS = [["rock", "scissors"], ["scissors", "paper"], ["paper", "rock"]]
  LOSERS = WINNERS.map { |x, y| [y, x] }

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

  def winner
    return player_1 if WINNERS.include?(match)
    return player_2 if LOSERS.include?(match)
    "draw"
  end

  def loser
    players.select { |player| player != winner }.first
  end

  private
  attr_reader :players, :weapons

  def match
    [player_1.weapon, player_2.weapon]
  end
end
