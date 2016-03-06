class Player
  attr_reader :c_rps, :name

  CHOICES = [:rock, :paper, :scissors, :lizard, :spock]

  def initialize(name = "computer")
    @name = name
    @c_rps = nil
  end

  def select_rps(value)
    error = "Wrong choice, select one of the following:#{CHOICES}"
    fail error unless CHOICES.include?(value) 
    @c_rps = value
  end

  def reset
    @c_rps = nil
  end

end
