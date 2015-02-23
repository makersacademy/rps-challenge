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

  def confront(element)
    if element.loses_to == self.name 
      @win = true 
    elsif element.name == self.name
      @win = nil
    else 
      @win = false
    end
  end

  def win?
    @win
  end

end