class Player

attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon(weapon)
    matcher= {:rock => :rock, :paper => :paper, :scissors => :scissors}
    @weapon = matcher[weapon]
  end

end