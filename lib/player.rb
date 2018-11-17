class Player
  attr_reader :choice, :name

  def initialize(name = "Computer",choice = ["rock","paper","scissors","lizard","spock"].sample)
    @name = name
    @choice = choice
  end

end
