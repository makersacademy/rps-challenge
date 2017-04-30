require_relative 'computer'

class RPS
  OUTCOME = { draw: 'Its a Draw!', win: 'You win!', lose: 'Computer wins :(' }
  RULES = [{ user: :rock, computer: :scissors },
            { user: :paper, computer: :rock },
            { user: :scissors, computer: :paper }
          ]

  attr_reader :pair

  def initialize(user_weapon, computer = Computer)
    @pair = {}
    @user_weapon = user_weapon
    @computer = computer.new
    draw_weapons
  end

  def result
    return OUTCOME[:draw] if draw?
    RULES.each { |hash| @pair == hash } ? OUTCOME[:win] : OUTCOME[:lose]
  end

  private

  def draw_weapons
    @pair = { user: @user_weapon, computer: random_computer_weapon }
  end

  def draw?
    @pair[:user] == @pair[:computer]
  end

  def random_computer_weapon
    @computer.random_weapon
  end

end
