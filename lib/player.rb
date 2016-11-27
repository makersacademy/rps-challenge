class Player

attr_reader :name, :choice

def initialize(user_name)
  @choice = nil
  @name = user_name
end


def rock
  @choice = 0
end

def paper
  @choice = 1
end

def scissors
  @choice = 2
end













end
