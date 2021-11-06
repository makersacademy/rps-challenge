require_relative "player"

class Game

  IMPLEMENT_LIST = [
    { :imp => :rock, :winv => [:scissors] },
    { :imp => :paper, :winv => [:rock] },
    { :imp => :scissors, :winv => [:paper] }
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

  def winner
    case
    when player_one_win_list.include?(player_two_implement) then return @player_one
    when player_two_win_list.include?(player_one_implement) then return @player_two
    else return nil
    end
  end

  def single_game?
    @player_two.computer?
  end

  private

  def random_implement
    rand(@implements.length)
  end

  def player_one_win_list
    @player_one.implement[:winv]
  end

  def player_two_win_list
    @player_two.implement[:winv]
  end

  def player_one_implement
    @player_one.implement[:imp]
  end

  def player_two_implement
    @player_two.implement[:imp]
  end

end
