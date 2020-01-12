class Game
  attr_reader :player_1_name, :player_2_name

  def initialize(name_1:, name_2:, num_weapons:, game_module:)
    @player_1_name = name_1
    @player_2_name = name_2
    @num_weapons = num_weapons
    @game_module = game_module
  end

  def result(move_1, move_2)
    @game_module::result(name_1: @player_1_name, name_2: @player_2_name, move_1: move_1, move_2: move_2, num_weapons: @num_weapons)
  end
end
