require_relative './player'

class Match
  attr_reader :p1, :p2, :game_type

  def initialize(play1,
    play2: "Computer",
    game_type: "single",
    player_class: Player)
    @play1 = player_class.new(play1)
    @play2 = player_class.new(play2)
    @game_type = game_type
  end

end
