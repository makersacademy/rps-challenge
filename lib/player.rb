class Player
  attr_reader :name, :go
  COMPUTER = "Computer"
  def initialize(name = COMPUTER)
    @name = name
    @go   = nil
  end

  def my_go(go)
    @go = go
  end
end
