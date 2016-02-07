class Game
  attr_reader :player_one, :player_two, :winner

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @winner = nil
    @draw = false
    @loser = nil
  end

  def fight
    difference = choice_value_diff % weapons_hash_length
    @draw = true if difference == 0
    declare_result(player_two, player_one) if difference.odd?
    declare_result(player_one, player_two) if difference.even? && difference != 0
  end

  def draw?
    @draw
  end

  def result
    draw? ? drawing_string : winning_string
  end

  private

  def choice_value_diff
    player_choice_value(@player_two) - player_choice_value(@player_one)
  end

  def player_choice_value(player)
    player.choice.values.pop
  end

  def player_choice(player)
    player.choice.keys.pop
  end

  def declare_result(winner, loser)
    @winner = winner
    @loser = loser
  end

  def winning_string
    "#{player_choice(@winner)} beats #{player_choice(@loser)}, #{@winner.name} has won!"
  end

  def drawing_string
    "It's a draw, you both chose #{player_choice(@player_one)}"
  end

  def weapons_hash_length
    Player::WEAPONS.length
  end


end
