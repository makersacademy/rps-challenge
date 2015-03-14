class Computer

  attr_reader :selection

  def selection
    @selection=[:rock, :paper, :scissors].sample
  end   

end  