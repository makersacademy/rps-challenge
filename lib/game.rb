require_relative "player"
require_relative "weapon"

class Game

  #-----------------------------------------------------------------------------------------------------------------------------
  # NOTE TO CODE REVIEWERS:
  # Just for fun, I went a bit beyond the rock-paper-scissors challenge and implemented a 16-item system instead of
  # the normal 3-item one (or the 5-item mentioned as a bonus level). Please note that although the weapon list is 
  # quite extensive (i.e. 16 items), the code is exactly the same as what I'd use for a 3-item system. 
  #-----------------------------------------------------------------------------------------------------------------------------
  WEAPON_LIST = [
    Weapon.new(:golem, [:pidgeot,:rapidash,:pikachu,:dragonite,:scyther,:pinsir], "https://cdn2.bulbagarden.net/upload/3/31/Spr_5b_076.png"),
    Weapon.new(:exeggutor, [:primeape,:golem,:seaking,:omastar,:poliwrath], "https://cdn2.bulbagarden.net/upload/1/19/Spr_5b_103.png"),
    Weapon.new(:scyther, [:primeape,:exeggutor,:pinsir,:victreebel,:poliwrath,:tangela], "https://cdn2.bulbagarden.net/upload/2/2c/Spr_5b_123_m.png"),
    Weapon.new(:pinsir, [:primeape,:exeggutor,:tangela], "https://cdn2.bulbagarden.net/upload/b/b1/Spr_5b_127.png"),
    Weapon.new(:primeape, [:golem,:lapras,:omastar,:steelix], "https://cdn2.bulbagarden.net/upload/0/07/Spr_5b2_057.png"),
    Weapon.new(:steelix, [:pidgeot,:pikachu,:dragonite,:scyther,:pinsir], "https://cdn2.bulbagarden.net/upload/4/49/Spr_5b_208_m.png"),
    Weapon.new(:tangela, [:golem,:seaking,:pikachu,:omastar], "https://cdn2.bulbagarden.net/upload/a/aa/Spr_5b_114.png"),
    Weapon.new(:pidgeot, [:primeape,:pinsir,:victreebel,:poliwrath,:tangela], "https://cdn2.bulbagarden.net/upload/8/8a/Spr_5b_018.png"),
    Weapon.new(:rapidash, [:exeggutor,:scyther,:pinsir,:victreebel,:tangela], "https://cdn2.bulbagarden.net/upload/5/58/Spr_5b_078.png"),
    Weapon.new(:seaking, [:golem,:rapidash,:steelix], "https://cdn2.bulbagarden.net/upload/f/f0/Spr_5b_119_m.png"),
    Weapon.new(:poliwrath, [:golem,:steelix,:rapidash,:seaking,:lapras], "https://cdn2.bulbagarden.net/upload/5/57/Spr_5b_062.png"),
    Weapon.new(:lapras, [:pidgeot,:golem,:rapidash,:dragonite,:scyther,:victreebel], "https://cdn2.bulbagarden.net/upload/6/62/Spr_5b_131.png"),
    Weapon.new(:dragonite, [:primeape,:rapidash,:seaking,:exeggutor,:scyther,:pinsir,
      :victreebel,:poliwrath,:tangela], "https://cdn2.bulbagarden.net/upload/9/96/Spr_5b_149.png"),
    Weapon.new(:omastar, [:pidgeot,:golem,:rapidash,:lapras,:dragonite,:scyther,:pinsir], "https://cdn2.bulbagarden.net/upload/f/fc/Spr_5b_139.png"),
    Weapon.new(:victreebel, [:golem,:seaking,:omastar,:poliwrath,:tangela], "https://cdn2.bulbagarden.net/upload/5/55/Spr_5b_071.png"),
    Weapon.new(:pikachu, [:pidgeot,:seaking,:lapras,:scyther,:omastar,:poliwrath], "https://cdn2.bulbagarden.net/upload/2/2b/Spr_5b2_025_m.png")
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
