class Weapon

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def self.create(type)
    @weapon = Weapon.new(type)
  end

  def self.instance
    @weapon
  end

end
