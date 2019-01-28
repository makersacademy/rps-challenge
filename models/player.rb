class Player

  attr_reader :weapon

  def initialize(rps)
    @weapon = rps.to_s
  end
end
