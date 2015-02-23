class Player
  attr_accessor :weapon
  attr_reader :name
  
  def initialize(name)
    @name=name
  end

  def random_weapon
    @weapon = [:scissor, :rock, :paper].sample
  end
end