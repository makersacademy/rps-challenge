require_relative "player"

class Game

  IMPLEMENT_LIST = [
    :rock, :paper, :scissors
  ].freeze

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two = Player.new, implements = IMPLEMENT_LIST)
    @player_one = player_one
    @player_two = player_two
    @implements = implements
  end

  def give_implement(player, n = random_implement)
    player.receive_implement(@implements[n])
    return @implements[n]
  end

  def single_game?
    @player_two.computer?
  end

  private

  def random_implement
    rand(@implements.length)
  end

end