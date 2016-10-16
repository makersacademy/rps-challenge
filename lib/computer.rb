class Computer

attr_reader :computer_item

def self.create
  @computer = Computer.new
end

def self.instance
  @computer
end

def initialize
  @computer_item
end


def random_select
  @computer_item = ["Rock", "Paper", "Scissor"].sample
end

end
