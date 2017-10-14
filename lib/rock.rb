require_relative 'weapon'

class Rock < Weapon

  def initialize
    @strong_against = [Scissors, Lizard]
    @weak_against = [Paper, Spock]
    @draws_against = [Rock]
  end

end
