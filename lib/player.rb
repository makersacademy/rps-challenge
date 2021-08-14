class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def hello
    puts "hello"
  end

  def move(choice)
    print choice
  end
  
end