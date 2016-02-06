class Computer
  attr_reader :name, :choice

  def initialize(name = "AI")
    @name = name
    @choice = nil
  end

  def rps_choice
    @choice = [:Rock, :Paper,:Scissors].sample
  end

end
