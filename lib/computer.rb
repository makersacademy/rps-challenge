class Computer
  def self.create
    @computer = Computer.new
  end

  def self.instance
    @computer
  end
  
  def selection
    ['rock', 'paper', 'scissors'].sample
  end
end
