module Rules
  COMBINATIONS = { rock:      { paper: [:lose, 'wraps'],
                                scissors: [:win, 'blunts'],
                                lizard: [:win, 'crushes'],
                                spock: [:lose, 'vaporises'],
                                rock: [:draw, 'matches']
                              },
                   paper:     { paper: [:draw, 'matches'],
                                scissors: [:lose, 'cuts'],
                                lizard: [:lose, 'eats'],
                                spock: [:win, 'disproves'],
                                rock: [:win, 'wraps']
                              },
                   scissors:  { paper: [:win, 'cuts'],
                                scissors: [:draw, 'matches'],
                                lizard: [:win, 'decapitates'],
                                spock: [:lose, 'smashes'],
                                rock: [:lose, 'blunts']
                              },
                   lizard:    { paper: [:win, 'eats'],
                                scissors: [:lose, 'decapitates'],
                                lizard: [:draw, 'matches'],
                                spock: [:win, 'poisons'],
                                rock: [:lose, 'crushes']
                              },
                   spock:     { paper: [:lose, 'disproves'],
                                scissors: [:win, 'smashes'],
                                lizard: [:lose, 'poisons'],
                                spock: [:draw, 'matches'],
                                rock: [:win, 'vaporises']
                              }

                 }
end