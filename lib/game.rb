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

  def result(options)
    player1, p1_move = options[:player1], options[:p1_move]
    player2, p2_move = options[:player2], options[:p2_move]
    outcome = COMBINATIONS[p1_move][p2_move]
    result_output(player1, player2, p1_move, p2_move, outcome[0], outcome[1])
  end

  private

  def result_output(player1, player2, p1_move, p2_move, outcome, verb)
    { draw: (outcome == :draw ? true : false),
      winner: (outcome == :lose ? player2.name : player1.name),
      loser: (outcome == :lose ? player1.name : player2.name),
      p1: (outcome == :lose ? p2_move.to_s : p1_move.to_s),
      verb: verb,
      p2: (outcome == :lose ? p1_move.to_s : p2_move.to_s)
    }
  end
end
