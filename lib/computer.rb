class Computer
  attr_reader :choice, :old_name, :name

  CHOICES = [:Rock, :Paper, :Scissors, :Lizard, :Spock]

  def initialize
    @name = :Computer
  end

  def generate_response
    @choice = CHOICES.sample
  end

  def message
    "#{@name} chose #{@choice}"
  end
end
