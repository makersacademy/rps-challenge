class Computer
  attr_reader :attack_method, :name

  def initialize
    @name = "Deep Blue"
  end

  def self.create
    @computer = Computer.new
  end

  def self.instance
    @computer
  end

  def attack_method
    "Rock"
  end

end
