require 'weapon'

class Paper < Weapon

  def initialize
    @strong_against = [Rock]
    @weak_against = [Scissors]
    @draws_against = [Paper]
  end

end
