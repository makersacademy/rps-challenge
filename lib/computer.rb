class Computer
  attr_reader :weapons, :choose_weapon

  def initialize
    @weapons = ['rock', 'paper', 'scissors']
  end

  def self.create
    @computer = Computer.new
  end

  def self.instance
    @computer
  end


  def choose_weapon
    @weapons.sample
  end

end
