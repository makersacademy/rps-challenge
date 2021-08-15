class Player

  COMPUTER_NAME = 'HAL 9000'

  attr_reader :name, :weapon, :type

  def initialize(name)
    @type = :computer if name.empty?
    generate_name(name)
    generate_weapon
  end

  def choose(weapon)
    @weapon = weapon
  end

  def generate_weapon
    @type == :computer ? @weapon = ['Rock', 'Paper', 'Scissors'].sample : @weapon = nil
  end

  private

  def generate_name(name)
    @type == :computer ? @name = COMPUTER_NAME : @name = name.capitalize
  end

end
