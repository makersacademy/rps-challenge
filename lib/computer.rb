class Computer
  @new_computer

  attr_reader :name, :choice
  WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Computer"
  end

  def self.create
    @new_computer = Computer.new
  end

  def self.instance
    @new_computer
  end

  def choose_weapon
    @choice = WEAPONS.sample
  end


end
