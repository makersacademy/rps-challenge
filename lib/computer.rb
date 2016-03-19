class Computer

attr_reader :name

def initialize
  @options = [:rock,:paper,:scissors]
  @name = "HAL"
end

def choose
  @options[rand(0..2)]
end

end
