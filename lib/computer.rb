class Computer

  SIGNS = ["rock", "paper", "scissors"]

  def initialize
    @move = nil
  end 

  def move
    @move
  end

  def randomly_choose(sign = nil)
    @move = sign 
    @move = random_sign if sign.nil?
  end

  private

  def random_sign
    SIGNS.sample
  end
end