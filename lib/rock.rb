require_relative 'weapon'

class Rock < Weapon

  def initialize
    @strong_against = [Scissors]
    @weak_against = [Paper]
    @draws_against = [Rock]
  end

end
