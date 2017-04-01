class Computer
  attr_reader :attack_method, :name

  def initialize(name)
    @name = name
  end

  def self.create(name="Deep Blue")
    @computer = Computer.new(name)
  end

  def self.instance
    @computer
  end

  def attack_method
    "Rock"
  end

end
