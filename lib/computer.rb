class Computer

  attr_reader :name
  attr_reader :points
  DEFAULT_POINTS = 0

  def initialize(*)
    @name = 'Computer'
    @points = DEFAULT_POINTS
  end

  def self.create
    @class_computer = Computer.new
  end

  def self.instance
    @class_computer
  end

  def add_points
    @points += 1
  end

  def weapon
    @weapon = Game::WEAPONS.sample
  end

end

