class Weapon
  attr_reader :choice

  def initialize(choice)
    @choice = choice
  end

  def self.create(choice)
    @weapon = Weapon.new(choice)
  end

  def self.instance
    @weapon
  end

end
