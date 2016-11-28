class Player


attr_reader :name, :selection

def initialize(name)
  @name = name
  @selection
end

def select(selection)
  @selection = selection
end

end
