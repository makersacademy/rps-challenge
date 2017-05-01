require "./lib/player.rb"

class Game

  OPTIONS = [:rock, :paper, :scissors]

  BEATS = { scissors: :rock, rock: :paper, paper: :scissors}

  attr_reader :playing, :current_player

  def initialize(player_1, cpu_player)
    @playing = [player_1, cpu_player]
    @current_player = player_1
  end

  def player_1
    @playing[0]
  end

  def cpu_player
    @playing[-1]
  end

  def change_turn
    @current_player = opponent(current_player)
  end

  def result
    return player_1.name if player_1.hand == BEATS[cpu_player.hand]
    return cpu_player.name if cpu_player.hand == BEATS[player_1.hand]
    return "Its a draw!" if player_1.hand == cpu_player.hand
  end

  private

  def opponent(of_player)
    @playing.select{ |player| player != of_player }[0]
  end
  
end
