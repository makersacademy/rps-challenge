require_relative 'weapon'

class Lizard < Weapon

  def initialize
    @strong_against = [Spock, Paper]
    @weak_against = [Rock, Scissors]
    @draws_against = [Lizard]
  end

end
