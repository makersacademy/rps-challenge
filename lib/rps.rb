require_relative 'computer'

class RPS
  OUTCOME = { draw: 'Its a Draw!', win: 'You win!', lose: 'Computer wins :(' }
  RULES = [{ user: :rock, computer: :scissors },
            { user: :paper, computer: :rock },
            { user: :scissors, computer: :paper },
            { user: :rock, computer: :lizard },
            { user: :lizard, computer: :spock },
            { user: :spock, computer: :scissors },
            { user: :scissors, computer: :lizard },
            { user: :lizard, computer: :paper },
            { user: :paper, computer: :spock },
            { user: :spock, computer: :rock }
          ]

  attr_reader :weapons

  def initialize(user_weapon, computer = Computer.new)
    @weapons = {}
    @user_weapon = user_weapon
    @computer = computer
    draw_weapons
  end

  def result
    return OUTCOME[:draw] if draw?
    RULES.include?(@weapons) ? OUTCOME[:win] : OUTCOME[:lose]
  end

  private

  def draw_weapons
    @weapons = { user: @user_weapon, computer: random_computer_weapon }
  end

  def draw?
    @weapons[:user] == @weapons[:computer]
  end

  def random_computer_weapon
    @computer.random_weapon
  end

end
