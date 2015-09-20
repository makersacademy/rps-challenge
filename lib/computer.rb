class Computer

  attr_reader:name

  def initialize
    @name = "Computer"
  end

  def choice
    [:paper, :rock, :scissors, :lizard, :spock].shuffle.first
  end

end
