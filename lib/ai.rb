#understands how to return a random weapon

class AI

  attr_reader :weapon

  def initialize
    @weapon = %w-R P S-.sample
  end

  def name
    'Machine'
  end 
end
