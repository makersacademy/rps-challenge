class Play

  attr_reader :name, :choice, :comp_choice

  def initialize(choices)
    @name = choices[:name]
    @choice = choices[:choice]
    @comp_choice = choices[:comp_choice]
  end

end
