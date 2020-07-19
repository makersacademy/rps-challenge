class Computer

  def initialize
    @computermoves = ['rock', 'paper', 'scissors']
  end

  def move
    @computermoves.sample
  end
end
