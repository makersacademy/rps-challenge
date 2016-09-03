class Game

  def initialize(player)
    @player = player
  end

  def player_name
    @player
  end

private

attr_reader :player

end
