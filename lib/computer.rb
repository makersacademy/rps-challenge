 require_relative 'player'

class Computer < Player

  def initialize(name)
    super(name)
    # @weapon_collection = [:Rock,:Scissors,:Paper]
  end

  def weapon
    [:Rock,:Scissors,:Paper].sample
  end

end
