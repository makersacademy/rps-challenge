

class Computer

  attr_reader :choice

  def pick
    value = Kernel.rand(3)
    @choice = :rock if value == 0
    @choice = :paper if value == 1
    @choice = :scissors if value == 2
  end

end
