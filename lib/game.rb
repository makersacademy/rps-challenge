require_relative "player"

class Game

  IMPLEMENT_LIST = [
    { :imp => :rock, :winv => [:scissors] },
    { :imp => :paper, :winv => [:rock] },
    { :imp => :scissors, :winv => [:paper] }
  ].freeze

  attr_reader :player_one, :player_two, :turn

  def initialize(player_one, player_two = Player.new, implements = IMPLEMENT_LIST)
    @player_one = player_one
    @player_two = player_two
    @implements = implements
    @turn = 1
  end

  def make_choice(n = nil)
    give_with_random(this_turns_player) if n.nil?
    give_with_choice(this_turns_player, n)
    switch_turn
  end

  def give_implement(player, n = random_implement)
    player.receive_implement(@implements[n])
    return @implements[n]
  end

  def winner
    return @player_one if player_one_win_list.include?(player_two_implement)
    return @player_two if player_two_win_list.include?(player_one_implement)
    return nil
  end

  def switch_turn
    @turn = (@turn == 1 ? 2 : 1)
  end

  def ready_to_declare
    has_implement(@player_one) && has_implement(@player_two)
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

  def has_implement(player)
    player.implement != nil
  end

  def give_with_choice(player, n)
    give_implement(player, n)
  end

  def give_with_random(player)
    give_implement(player)
  end

  def this_turns_player
    turn == 1 ? @player_one : @player_two
  end

end
