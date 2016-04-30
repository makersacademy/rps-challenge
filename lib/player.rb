class Player

  attr_reader :name
  attr_accessor :choice

  CHOICES = {
             scissors: 0,
             paper: 1,
             rock: 2,
             lizard: 3,
             spock: 4
            }
  CLASSIC = 3
  SPOCK = 5

  def initialize(name)
    @name = name
  end

  def to_i(choice)
    CHOICES[choice.to_sym]
  end

  def computer_choice(game_mode)
    game_mode == "classic" ? Kernel.rand(CLASSIC) : Kernel.rand(SPOCK)
  end

end