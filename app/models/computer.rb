class Computer

  attr_accessor :selection

  #need get_selection method over a selection accessor 
  #so that the random selection is not called every time
  #need the accessor for the test 

  def get_selection
    @selection=[:rock, :paper, :scissors].sample
  end   

end  