class Player

  attr_reader :name, :rps_choice

  def initialize(name)
    @name = name
  end

  def select_rps(rps_choice)
    @rps_choice = rps_choice
  end


end
