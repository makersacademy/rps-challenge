require_relative 'weapon'


class Scissors < Weapon

  def initialize
    @strong_against = [Paper, Lizard]
    @weak_against = [Rock, Spock]
    @draws_against = [Scissors]
  end

end
