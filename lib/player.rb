class Player

  attr_accessor :selection, :name

  def initialize
    @selection=nil
    @name = nil
  end  

  def selection=(choice)
    @selection=choice
  end   

  def selection
    @selection
  end  

end  