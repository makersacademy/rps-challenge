class Cpu

  def choose_sign
    @choosen = [:rock, :paper, :scissor].sample
  end

  def rock?
    @choosen == :rock
  end

  def paper?
    @choosen == :paper
  end

  def scissor?
    @choosen == :scissor
  end

end
