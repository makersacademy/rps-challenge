require_relative 'weapon'

class Paper < Weapon

  def initialize
    @strong_against = [Rock, Spock]
    @weak_against = [Scissors, Lizard]
    @draws_against = [Paper]
  end

end
