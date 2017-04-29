class Computer
  attr_reader :choice, :old_name

  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize
    @name = :Computer
    @old_name = ''
  end

  def generate_response
    @choice = CHOICES.sample
  end

  def message
    "#{@name} chose #{@choice}"
  end
end
