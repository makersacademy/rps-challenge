class Computer
  attr_reader :computer

  def initialize
    @computer = 0
  end

  def self.create
    @computer = Computer.new
  end

  

end
