class Element

  attr_reader :name, :win, :loses_to

  def initialize(options = {})
    @name = options[:name]
    @loses_to = options[:loses_to]
  end

  def self.rock
    new(:name => "rock", :loses_to => "paper")
  end

  def self.paper
    new(:name => "paper", :loses_to => "scissors")
  end

  def self.scissors
    new(:name => "scissors", :loses_to => "rock")
  end 

  def beat(element)
    @win = true if element.loses_to == "rock"
    @win = false if element.loses_to == "scissors"
  end
end