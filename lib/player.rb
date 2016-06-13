class Player

  attr_reader :name, :choice

  def initialize(name,choice)
    @name = name
    @choice= choice
  end

  # def weapon=(choice)
  #   fail 'not a possible weapon' unless Game::WEAPONS.includes? choice
  #   @weapon = choice
  # end

end
