class Player

  attr_reader :name
  attr_accessor :rps_choice

  def initialize(name)
    @name = name
    @rps_choice = ''
  end

end
