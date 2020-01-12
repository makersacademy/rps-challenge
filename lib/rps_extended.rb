module RPSExtended
  # RPS Extended Weapons rules - odd number of weapons greater than 3 & each weapon beats half of all other weapons.
  # For module logic to work weapons are assumed to beat every other weapon from the next immediate weapon index onwards. Moves are 1 indexed, two example weapon arrays below:
  # RPS = [scissors, paper, rock]
  # => move:  1        2      3
  # RPSSL = [scissors, paper, rock, lizard, spock]
  # => move:     1       2      3      4      5

  DEFAULT_NAME_1 = 'Player 1'
  DEFAULT_NAME_2 = 'Player 2'

  def self.result(name_1: DEFAULT_NAME_1, move_1:, name_2: DEFAULT_NAME_2, move_2:, num_weapons:)
    raise('Number of weapons does not meet rules!') if num_weapons < 3 || num_weapons % 2 == 0

    raise('Move out of range!') unless move_1.between?(1, num_weapons) && move_2.between?(1, num_weapons)

    return "It's a Draw!" if move_1 == move_2
    "#{self.wins?(move_1 - 1, move_2 - 1, num_weapons) ? name_1 : name_2} Wins!"
  end

  private

  def self.wins?(move_1, move_2, num_weapons)
    ((1...num_weapons).step(2).to_a).map{|n| ((move_1 + n) % num_weapons) == move_2}.include?(true)
  end
end
