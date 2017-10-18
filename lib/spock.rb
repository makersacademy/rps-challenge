require_relative 'weapon'

class Spock < Weapon

  def initialize
    @strong_against = [Scissors, Rock]
    @weak_against = [Paper, Lizard]
    @draws_against = [Spock]
  end

end
