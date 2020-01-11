class Game

  def initialize(player)
    @player = player
  end

  def rock_paper_scissors
    ["Rock", "Paper", "Scissors"].sample
  end

  def player_name
    @player.name
  end
end