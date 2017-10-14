require 'weapon'


class Scissors < Weapon

  def initialize
    @strong_against = [Paper]
    @weak_against = [Rock]
    @draws_against = [Scissors]
  end

end
