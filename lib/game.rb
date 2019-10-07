require './lib/player'

class Game

  attr_reader :player_1, :player_2, :winner_name
  WEAPON_WIN = {
      Rock: :Scissors,
      Scissors: :Paper,
      Paper: :Rock
  }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner_name = nil
  end

  # Return nil if it's a draw otherwise return the winner
  def resolve_winner(player_1_weapon, player_2_weapon)

    return nil if player_1_weapon == player_2_weapon
    WEAPON_WIN[player_1_weapon] == player_2_weapon ? @player_1 : @player_2

  end

  def play

    @winner = resolve_winner(@player_1.weapon, @player_2.weapon)
    return @winner_name = "It's a draw" if @winner.nil?
    @winner.add_to_score
    @winner_name = @winner.name

  end

end
