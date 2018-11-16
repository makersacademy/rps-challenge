require_relative './player'
require_relative './adjudicator'

class Match
  attr_reader :play1, :play2, :game_type

  def initialize(play1,
    play2: "Computer",
    game_type: "single",
    player_class: Player)
    @play1 = player_class.new(play1)
    @play2 = player_class.new(play2)
    @game_type = game_type
  end

  def do_move(player, move)
    player.make_move(move)
  end

  def do_random_move(player)
    player.make_random_move
  end

  def see_move(player)
    player.move
  end

end
