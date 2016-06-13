
module RpsExtendedCombinations

  MOVES = [:r, :p, :s, :l, :sp]

  MOVE_RESULT = {[:r, :s] => 'Rock crushes Scissors.',
                [:r, :l] => 'Rock crushes Lizard.',
                [:p, :r] => 'Paper covers Rock.',
                [:p, :sp] => 'Paper disproves Spock.',
                [:s, :p] => 'Scissors cut Paper.',
                [:s, :l] => 'Scissors decapitate Lizard.',
                [:l, :sp] => 'Lizard poisons Spock.',
                [:l, :p] => 'Lizard eats Paper.',
                [:sp, :s] => 'Spock smashes Scissors.',
                [:sp, :r] => 'Spock vaporizes Rock.'
                }

end