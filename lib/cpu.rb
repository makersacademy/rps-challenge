class Cpu

  attr_reader :choosen

  def initialize
    @choosen = nil
  end

  def choose_sign
    @choosen = ['rock', 'paper', 'scissor'].sample
  end

  def rock?
    @choosen == 'rock'
  end

  def paper?
    @choosen == 'paper'
  end

  def scissor?
    @choosen == 'scissor'
  end

end
