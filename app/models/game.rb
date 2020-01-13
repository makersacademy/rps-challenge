# test multiplayer option, auto to boolean
# test default names
# test return of moves as strings

class Game
  attr_reader :player_1_name, :player_2_name, :multiplayer

  DEFAULT_NAME = 'Player '

  def initialize(name_1:, name_2:, weapons:, game_module:, multiplayer:)
    @weapons = weapons
    @num_weapons = weapons.length
    @game_module = game_module
    @multiplayer = to_boolean(multiplayer)
    @player_1_name = default_name(name_1, '1')
    @player_2_name = default_name(name_2, '2')
  end

  def add_move_1(move)
    @move_1 = move
  end

  def add_move_2(move)
    @move_2 = move
  end

  def result
    {result: @game_module::result(name_1: @player_1_name, name_2: @player_2_name, move_1: @move_1, move_2: move_2, num_weapons: @num_weapons), player_1_move: move_to_str(@move_1), player_2_move: move_to_str(@move_2)}
  end

  def self.create(name_1:, name_2:, weapons:, game_module:, multiplayer:)
    @@game_instance = self.new(name_1: name_1, name_2: name_2, weapons: weapons, game_module: game_module, multiplayer: multiplayer)
  end

  def self.game_instance
    @@game_instance ||= nil
  end

  private

  def move_2
    @move_2 ||= (1..@num_weapons).to_a.sample
  end

  def default_name(name, num)
    name.empty? ? (@multiplayer ? 'Computer' : DEFAULT_NAME + num ) : name_2
  end

  def to_boolean(str)
    str == 'true'
  end

  def move_to_str(num)
    @weapons[num - 1]
  end
end


# DEFAULT_NAME_1 = 'Player 1'
# DEFAULT_NAME_2 = 'Player 2'
#
# def default_name_1(name_1)
#   name_2.empty? ? DEFAULT_NAME_1 : name_1
# end
#
# def default_name_2(name)
#   name.empty? ? (@multiplayer ? DEFAULT_NAME_1 : 'Computer') : name_2
# end
