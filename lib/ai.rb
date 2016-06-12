#understands how to return a random weapon

class AI

  attr_reader :weapon

  def initialize
    @weapon = %w-R P S SP L-.sample
  end

  def name
    'Machine'
  end 
end
