class Weapons
  attr_reader :rack

  def initialize
    @rack = [:rock, :paper, :scissors, :lizard, :spock]
  end

  def available?(weapon)
    @rack.include?(weapon)
  end

  def random_select
    @rack.sample
  end

end
