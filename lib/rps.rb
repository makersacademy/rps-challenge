require_relative 'computer'

class RPS
  RULES = [ { user: :rock, computer: :scissors },
            { user: :paper, computer: :rock },
            { user: :scissors, computer: :paper }
          ]

  attr_reader :pair

  def initialize(user_weapon = :rock, computer = Computer)
    @pair = {}
    @user_weapon = user_weapon
    @computer = computer.new
    draw_weapons
  end

  def draw_weapons
    @pair = { user: @user_weapon, computer: random_computer_weapon }
  end

  def combinations
    RULES
  end

  def result
    return "Its a Draw!" if draw?
    if @pair == RULES[0] || @pair == RULES[1] || @pair == RULES[2]
      return 'You win!'
    else
      return 'Computer wins :('
    end
  end

  private

  def draw?
    self.pair[:user] == self.pair[:computer]
  end

  def random_computer_weapon
    @computer.random_weapon
  end

end
