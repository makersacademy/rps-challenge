class SpiritAnimalBattle

  attr_reader :choice_of

  def initialize
    @choice_of = {'rock'    => ['scissor' , 'lizard'  ],
                  'paper'   => ['rock'    , 'spock'   ],
                  'scissor' => ['paper'   , 'lizard'  ],
                  'lizard'  => ['spock'   , 'paper'   ],
                  'spock'   => ['rock'    , 'scissor' ]}
  end

  def pair_up(p1, p2)

    fail 'YOU MADE A TYPO!' unless choice_of.include?(p1.downcase) && choice_of.include?(p2.downcase)

    return 'Draw!' if p1 == p2 
    @choice_of[p1].include?(p2) ? '#{p1} won!' : '#{p2} won!'

  end

  def game_choice
    choice_of.keys.sample
  end


end