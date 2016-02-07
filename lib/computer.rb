class Computer
  attr_reader :name, :choice

  def initialize(name = "AI")
    @name = name
    @choice = [:Rock, :Paper,:Scissors].sample
  end

  # def rps_choice
  #   @choice =
  # end

end
