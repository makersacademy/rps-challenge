class Computer
  attr_reader :name, :selection

  CHOICES = [:rock,:paper,:scissors,:spock,:lizard]

  def initialize
    @name = 'Computer'
    @selection = nil
  end

  def comp_choice
    @selection = CHOICES.sample
  end

end