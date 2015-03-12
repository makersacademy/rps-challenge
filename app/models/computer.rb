class Computer

  attr_reader :selection

  def make_selection
    @selection=[:rock, :paper, :scissors].sample
  end   

end  