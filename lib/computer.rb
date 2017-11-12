class Computer

attr_reader :computer_sign,

  def initialize
    @computer_sign = nil
  end

  def enemy
    @computer_sign = ["rock","paper","scissors"].sample
  end

end
