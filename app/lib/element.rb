class Element

  attr_reader :name, :win

  def initialize(name)
    @name = name
  end

  def self.rock
    new("rock")
  end

  def self.paper
    new("paper")
  end

  def self.scissors
    new("scissors")
  end 

  def beat(element)
    @win = true if element.name == "scissors" 
    @win = false if element.name == "paper" 
  end
end