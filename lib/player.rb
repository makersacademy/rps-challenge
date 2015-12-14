class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @name = (self.computer? ? 'Computer' : 'J. Bloggs') if name.empty?
  end

  def computer?
    self.is_a? Computer
  end
end
