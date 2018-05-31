class Player
  attr_reader :name
  attr_accessor :action

  def initialize(name)
    @name = name
    @action = nil
  end
end
