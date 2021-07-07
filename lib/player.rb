class Player
  attr_accessor :move
  attr_reader :computer
  alias :computer? :computer

  def initialize(name, computer = false)
    @name = name
    @computer = computer
  end

  def name
    return "Jamie Doe" if @name == ''

    @name
  end

end
