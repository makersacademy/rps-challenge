class Computer

  def selection
    RPS_OBJECTS.sample
  end

end

private

RPS_OBJECTS = [:rock, :paper, :scissors]
