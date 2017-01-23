class Player
  attr_reader :name
  attr_accessor :pick

  def initialize(name)
    @name = name == "" ? "CPU" : name
  end
end
