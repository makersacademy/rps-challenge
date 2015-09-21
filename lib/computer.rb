class Computer

  attr_reader :options, :computer_weapon

  def initialize
    @options = [:rock, :paper, :scissors]
    @computer_weapon = options.sample.to_s
  end

end
