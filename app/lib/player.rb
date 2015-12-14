class Player

  COMP = "Computer"
  attr_reader :name, :lives, :computer

  def initialize(name= COMP, computer = false)
    @name = name.capitalize
    @computer =  (name == COMP ? true : false)
  end

end
