class Computer
  attr_writer :weapon
  def name
    @name = 'computer'
  end

  def weapon
    @weapon = %w(scissors paper rock).sample
  end
end