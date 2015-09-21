class ComputerPlayer

  attr_reader :name, :choice, :variant

  def initialize(name='Computer Player',variant=:rps)
    @name = name
    @variant = variant
  end

  def make_choice
    if variant == :rps
      @choice = [:rock, :paper, :scissors][rand(0..2)]
    else
      @choice = [:rock, :paper, :scissors, :lizard, :spock].sample
    end
  end

end
