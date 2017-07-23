class Computer

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon
  end

  # Only setter method changes the weapon so that getter method
  # can be used to display the randomly chosen weapon
  def weapon=(weapon)
    fail "Invalid weapon" unless [:rock, :paper, :scissors, nil].include?(weapon)
    @weapon = weapon || random_weapon
  end

  private

  def random_weapon
    [:rock, :paper, :scissors].sample
  end

end
