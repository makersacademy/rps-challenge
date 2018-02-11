
class Videogame

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
  p  @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
  end

  def play_round(player)
    if player == "rock" && player_2 == "scissors"
      player.increase_points
    elsif player == "scissors" && player_2 == "paper"
      player.increase_points
    elsif player == "paper" && player_2 == "rock"
      player.increase_points
    end
  end

end
