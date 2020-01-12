class Weapon
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def beats?(other)
    true
  end
end
