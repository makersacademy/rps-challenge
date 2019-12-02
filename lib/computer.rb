class Computer

  SIGNS = ["Rock", "Paper", "Scissors"]

  def initialize
    @choice = nil
  end 

  def randomly_choose(sign = SIGNS)
    @choice = sign if sign.is_a? String
    @choice = sign.sample if sign.is_a? Array
  end

  def move
    @choice
  end
end