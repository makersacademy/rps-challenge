
class Computer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def computer_move
    ["rock","scissors","paper"].sample
  end

end
