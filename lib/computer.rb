class Computer


  def random_choice
    PC_CHOICE.sample
  end

  private
  PC_CHOICE = [:rock, :paper, :scissors]
end
