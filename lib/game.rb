class Game
  COMBINATIONS = { rock: { paper: [:lose, 'wraps'],
                           scissors: [:win, 'blunts'],
                           rock: [:draw, 'matches']
                         },
                   paper: { paper: [:draw, 'matches'],
                            scissors: [:lose, 'cuts'],
                            rock: [:win, 'wraps']
                          },
                   scissors: { paper: [:win, 'cuts'],
                               scissors: [:draw, 'matches'],
                               rock: [:lose, 'blunts']
                             }
                 }

  def initialize(rounds)
    @rounds = rounds
  end

  def result(options)
    player1, p1_move = options[:player1], options[:p1_move]
    player2, p2_move = options[:player2], options[:p2_move]
    outcome = COMBINATIONS[p1_move][p2_move]

    { draw: (outcome[0] == :draw ? true : false),
      winner: (outcome[0] == :lose ? player2.name : player1.name),
      loser: (outcome[0] == :lose ? player1.name : player2.name),
      p1: (outcome[0] == :lose ? p2_move : p1_move),
      verb: outcome[1],
      p2: (outcome[0] == :lose ? p1_move : p2_move)
    }
  end
end
