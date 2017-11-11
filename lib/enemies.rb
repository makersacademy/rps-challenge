class Enemies
  attr_reader :pair
  
  def initialize(weapon, nemesis)
    @pair = { weapon => nemesis }
  end
end
