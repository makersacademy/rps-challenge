class Player
  attr_reader :name
  attr_accessor :tool

  def initialize(name)
    @name = name
    @tool = 'rock'
  end
end
