class Computer

  attr_reader :weapon, :name

  def initialize
    @name = ['me','a big shot','Nicolas Cage','a DINOSAUR','the milkman','the Devil','a unicorn','Batman','Ski Ba Bop Ba Dop Bop','THE one','my Grandma','Superman'].sample
  end

  def chose_weapon
    @weapon = Game::WEAPONS.sample
  end
end
