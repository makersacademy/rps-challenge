

class Cpu

  attr_reader :choice

  def initialize
    @choice = Game::OPTIONS.sample
  end

  def name
    "CPU__" + ["BOB", "EVE", "JIM", "HAL"].sample + rand(3000).to_s
  end

end
