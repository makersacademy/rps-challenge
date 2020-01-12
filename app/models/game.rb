class Game
  attr_reader :player_1_name, :player_2_name

  DEFAULT_NAME_1 = 'Player 1'
  DEFAULT_NAME_2 = 'Player 2'

  def initialize(name_1:, name_2:, num_weapons:, game_module:)
    name_1.empty? ? (@player_1_name = DEFAULT_NAME_1) : (@player_1_name = name_1)
    name_2.empty? ? (@player_2_name = DEFAULT_NAME_2) : (@player_2_name = name_2)
    @num_weapons = num_weapons
    @game_module = game_module
  end

  def add_move_1(move)
    @move_1 = move
  end

  def add_move_2(move)
    @move_2 = move
  end

  def result
    @game_module::result(name_1: @player_1_name, name_2: @player_2_name, move_1: move_1, move_2: move_2, num_weapons: @num_weapons)
  end

  def self.create(name_1:, name_2:, num_weapons:, game_module:)
    @@game_instance = self.new(name_1: name_1, name_2: name_2, num_weapons: num_weapons, game_module: game_module)
  end

  def self.game_instance
    @@game_instance ||= nil
  end

  private

  def move_1
    @move_1
  end

  def move_2
    @move_2 ||= (1..@num_weapons).to_a.sample
  end
end
