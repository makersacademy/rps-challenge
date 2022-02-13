class BotPlayer

  WEAPONS = [:rock, :scissors, :paper].freeze

  attr_reader :name, :weapon

  def initialize
    @weapon = WEAPONS.sample
    @name = "Computer"
  end

end
