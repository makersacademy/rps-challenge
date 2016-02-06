class PCPlayer

  attr_reader :choice

  def generate_choice
    @choice = [:rock, :paper, :scissors, :lizard, :Spock].sample
  end

end
