# This class decides who has won, if there is a draw, and the type of victory.
# We also see if player 1 or player 2 won.
class VictoryGenerator

  WINNING_TYPES = { ['Rock', 'Paper'] => ['covers', 1],
                    ['Rock', 'Scissors'] => ['crushes', 0],
                    ['Rock', 'Lizard'] => ['crushes', 0],
                    ['Rock', 'Spock'] => ['vaporises', 1],
                    ['Paper', 'Scissors'] => ['cuts', 1],
                    ['Paper', 'Lizard'] => ['eats', 1],
                    ['Paper', 'Spock'] => ['disproves', 0],
                    ['Scissors', 'Lizard'] => ['decapitates', 0],
                    ['Scissors', 'Spock'] => ['smashes', 1],
                    ['Lizard', 'Spock'] => ['poisons', 0]

  }

  # This function returns [type, winner] and whether the players were reversed
  def search_types(hash)
    return [WINNING_TYPES[hash.values], 0] if valid_type?(hash)

    [WINNING_TYPES[hash.values.reverse], 1]
  end

  def winner(players)
    hash = players_to_hash(players)
    results = [search_types(hash)[0][1], search_types(hash)[1]]
    return hash.keys[results.reduce(:-)]
  end

  def victory_type(players)
    hash = players_to_hash(players)
    search_types(hash)[0][0]
  end

  def draw?(players)
    players[0].move == players[1].move
  end

  private

  def players_to_hash(players)
    output = {}
    players.each { |player| output[player] = player.move }
    return output
  end

  def valid_type?(hash)
    WINNING_TYPES.include?(hash.values)
  end
end
