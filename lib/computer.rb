class Computer

  attr_reader :name, :weapon

  def initialize()
    @name = "Computer"
  end

  def computer_choice
    @weapon = CHOICES.sample
  end

  private
  CHOICES = [:rock, :paper, :scissors]

end
