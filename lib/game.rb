require_relative "player"
require_relative "weapon"

class Game

  WEAPON_LIST = [
    Weapon.new(:golem, [:scyther, :pinsir], "https://cdn2.bulbagarden.net/upload/3/31/Spr_5b_076.png"),
    Weapon.new(:exeggutor, [:golem, :slowbro], "https://cdn2.bulbagarden.net/upload/1/19/Spr_5b_103.png"),
    Weapon.new(:scyther, [:exeggutor, :pinsir], "https://cdn2.bulbagarden.net/upload/2/2c/Spr_5b_123_m.png"),
    Weapon.new(:pinsir, [:exeggutor, :slowbro], "https://cdn2.bulbagarden.net/upload/b/b1/Spr_5b_127.png"),
    Weapon.new(:slowbro, [:scyther, :golem], "https://cdn2.bulbagarden.net/upload/e/e1/Spr_5b2_080.png")
  ].freeze

  attr_reader :player_one, :player_two, :turn, :weapons

  def initialize(player_one, player_two = Player.new, weapons = WEAPON_LIST)
    @player_one = player_one
    @player_two = player_two
    @weapons = weapons
    @turn = 1
  end

  def make_choice(n = nil)
    n.nil? ? give_with_random : give_with_choice(n)
    switch_turn
  end

  def give_weapon(player, n = random_weapon)
    player.receive_weapon(@weapons[n])
    return @weapons[n]
  end

  def winner
    return nil unless ready_to_declare?
    return @player_one if player_one_win_list.include?(player_two_weapon)
    return @player_two if player_two_win_list.include?(player_one_weapon)
    return nil
  end

  def draw?
    winner.nil?
  end

  def switch_turn
    @turn = (@turn == 1 ? 2 : 1)
  end

  def ready_to_declare?
    weapon?(@player_one) && weapon?(@player_two)
  end

  def single_game?
    @player_two.computer?
  end

  def reset
    @turn = 1
    @player_one.remove_weapon
    @player_two.remove_weapon
  end

  def this_turns_player
    turn == 1 ? @player_one : @player_two
  end

  private

  def random_weapon
    rand(@weapons.length)
  end

  def player_one_win_list
    @player_one.weapon.targets
  end

  def player_two_win_list
    @player_two.weapon.targets
  end

  def player_one_weapon
    @player_one.weapon.name
  end

  def player_two_weapon
    @player_two.weapon.name
  end

  def weapon?(player)
    player.weapon != nil
  end

  def give_with_choice(n)
    give_weapon(this_turns_player, n)
  end

  def give_with_random
    give_weapon(this_turns_player)
  end

end
