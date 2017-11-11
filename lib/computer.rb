class Computer

  attr_reader :weapon

  WEAPONS = ['rock', 'paper', 'scissors']

  def initialize(weapons = WEAPONS)
    @weapon = weapons.sample
  end

  def self.create
    @computer = Computer.new
  end

  def self.instance
    @computer
  end

end
