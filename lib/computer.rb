class Computer

  def self.options
    @@options = ['Rock', 'Paper', 'Scissors']
  end

  attr_reader :name, :choice

  def initialize(name = "Siri")
    @name = name
    @choice = nil
  end

  def randomizer
    @choice = Computer.options.sample
  end

end
