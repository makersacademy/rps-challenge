class Game
  attr_reader :player_one, :player_two, :winner, :loser

  WEAPONS = {'Rock' => 1,
            'Paper' => 2,
            'Scissors' => 3,
            'Spock' => 4,
            'Lizard' => 5}

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @winner = nil
    @draw = false
    @loser = nil
  end

  def fight
    difference = weapon_values_modulo
    @draw = true if difference == 0
    declare_result(player_two, player_one) if difference.odd?
    declare_result(player_one, player_two) if difference.even? && difference != 0
  end

  def draw?
    @draw
  end

  def result
    draw? ? :draw : :win
  end

  private

  def weapon_value_diff
    @player_two.weapon_value - @player_one.weapon_value
  end

  def weapon_values_modulo
    weapon_value_diff % weapons_hash_length
  end

  def declare_result(winner, loser)
    @winner = winner
    @loser = loser
  end

  def weapons_hash_length
    Game::WEAPONS.length
  end

end
