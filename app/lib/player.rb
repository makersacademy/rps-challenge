class Player

  LIVES = 3
  COMP = "Computer"
  attr_reader :name, :lives, :computer

  def initialize(name= COMP, lives = LIVES, computer = false)
    @name = name.capitalize
    @lives = lives
    name == COMP ? @computer = true : @computer = false
  end

end
