class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @selection = []
  end

  def selection(rps)
    @selection << rps
  end

  def return_selection
    @selection[-1]
  end


end
