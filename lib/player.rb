class Player

  attr_accessor :name
  attr_reader :selection

  def make_selection=(choice)
    @selection=choice
  end   

end  