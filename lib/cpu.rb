

class Cpu
attr_reader :name

  def initialize
    @name = "CPU"
  end

  def choice
    Game::OPTIONS.sample
  end

end
