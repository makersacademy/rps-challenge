class Player

attr_reader :name, :choice

def initialize(name)
  @name = name
end

def make_choice(pick)
  @choice = pick
end

end
