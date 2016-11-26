class Computer

  def selection
    random = rand(1..3)
    return :rock if random == 1
    return :paper if random == 2
    return :scissors if random == 3
  end

end
