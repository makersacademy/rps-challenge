class Player
  attr_reader :name

  def initialize(name = ["Hugh Jass", "I.P. Freely"].sample)
    @name = name
  end
end
