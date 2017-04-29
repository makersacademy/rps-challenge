class Computer
  attr_reader :choice

  CHOICES = [:Rock, :Paper, :Scissors]

  def generate_response
    @choice = CHOICES.sample
  end

  def message
    "Computer chose #{@choice}"
  end
end
