require_relative 'player'

class AIComputer < Player

  def initialize(name="AI Computer")
    super
    # super takes all the methods from the parent class
    # (in this case it is Player)
  end

end
